import 'package:dio/dio.dart';
import '../error/exceptions.dart';

class ApiClient {
  static Future<T> handleResponse<T>({
    required Future<T> Function() apiCall,
  }) async {
    try {
      final response = await apiCall();
      return response;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  static Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return ServerException(
          message: 'Connection timed out, please try again.',
        );

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        switch (statusCode) {
          case 400:
            return ServerException(
              message: 'Bad request, please check your input.',
            );
          case 401:
            return ServerException(
              message: 'Unauthorized, please login again.',
            );
          case 403:
            return ServerException(
              message: 'Access forbidden.',
            );
          case 404:
            return ServerException(
              message: 'Resource not found.',
            );
          case 500:
            return ServerException(
              message: 'Internal server error, please try again later.',
            );
          default:
            return ServerException(
              message: 'Server error occurred, please try again.',
            );
        }

      case DioExceptionType.cancel:
        return ServerException(
          message: 'Request cancelled.',
        );

      case DioExceptionType.connectionError:
        return ServerException(
          message: 'No internet connection.',
        );

      default:
        return ServerException(
          message: 'An error occurred, please try again.',
        );
    }
  }
}
