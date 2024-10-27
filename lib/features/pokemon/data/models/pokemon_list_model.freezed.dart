// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonListModel _$PokemonListModelFromJson(Map<String, dynamic> json) {
  return _PokemonListModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListModel {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonListItemModel> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListModelCopyWith<PokemonListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListModelCopyWith<$Res> {
  factory $PokemonListModelCopyWith(
          PokemonListModel value, $Res Function(PokemonListModel) then) =
      _$PokemonListModelCopyWithImpl<$Res, PokemonListModel>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonListItemModel> results});
}

/// @nodoc
class _$PokemonListModelCopyWithImpl<$Res, $Val extends PokemonListModel>
    implements $PokemonListModelCopyWith<$Res> {
  _$PokemonListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListModelImplCopyWith<$Res>
    implements $PokemonListModelCopyWith<$Res> {
  factory _$$PokemonListModelImplCopyWith(_$PokemonListModelImpl value,
          $Res Function(_$PokemonListModelImpl) then) =
      __$$PokemonListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonListItemModel> results});
}

/// @nodoc
class __$$PokemonListModelImplCopyWithImpl<$Res>
    extends _$PokemonListModelCopyWithImpl<$Res, _$PokemonListModelImpl>
    implements _$$PokemonListModelImplCopyWith<$Res> {
  __$$PokemonListModelImplCopyWithImpl(_$PokemonListModelImpl _value,
      $Res Function(_$PokemonListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonListModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListModelImpl implements _PokemonListModel {
  const _$PokemonListModelImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<PokemonListItemModel> results})
      : _results = results;

  factory _$PokemonListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListModelImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonListItemModel> _results;
  @override
  List<PokemonListItemModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListModelImplCopyWith<_$PokemonListModelImpl> get copyWith =>
      __$$PokemonListModelImplCopyWithImpl<_$PokemonListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonListModel implements PokemonListModel {
  const factory _PokemonListModel(
          {required final int count,
          required final String? next,
          required final String? previous,
          required final List<PokemonListItemModel> results}) =
      _$PokemonListModelImpl;

  factory _PokemonListModel.fromJson(Map<String, dynamic> json) =
      _$PokemonListModelImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonListItemModel> get results;

  /// Create a copy of PokemonListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListModelImplCopyWith<_$PokemonListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonListItemModel _$PokemonListItemModelFromJson(Map<String, dynamic> json) {
  return _PokemonListItemModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonListItemModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonListItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonListItemModelCopyWith<PokemonListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListItemModelCopyWith<$Res> {
  factory $PokemonListItemModelCopyWith(PokemonListItemModel value,
          $Res Function(PokemonListItemModel) then) =
      _$PokemonListItemModelCopyWithImpl<$Res, PokemonListItemModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListItemModelCopyWithImpl<$Res,
        $Val extends PokemonListItemModel>
    implements $PokemonListItemModelCopyWith<$Res> {
  _$PokemonListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListItemModelImplCopyWith<$Res>
    implements $PokemonListItemModelCopyWith<$Res> {
  factory _$$PokemonListItemModelImplCopyWith(_$PokemonListItemModelImpl value,
          $Res Function(_$PokemonListItemModelImpl) then) =
      __$$PokemonListItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonListItemModelImplCopyWithImpl<$Res>
    extends _$PokemonListItemModelCopyWithImpl<$Res, _$PokemonListItemModelImpl>
    implements _$$PokemonListItemModelImplCopyWith<$Res> {
  __$$PokemonListItemModelImplCopyWithImpl(_$PokemonListItemModelImpl _value,
      $Res Function(_$PokemonListItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonListItemModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListItemModelImpl implements _PokemonListItemModel {
  const _$PokemonListItemModelImpl({required this.name, required this.url});

  factory _$PokemonListItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListItemModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListItemModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListItemModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
      get copyWith =>
          __$$PokemonListItemModelImplCopyWithImpl<_$PokemonListItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListItemModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonListItemModel implements PokemonListItemModel {
  const factory _PokemonListItemModel(
      {required final String name,
      required final String url}) = _$PokemonListItemModelImpl;

  factory _PokemonListItemModel.fromJson(Map<String, dynamic> json) =
      _$PokemonListItemModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonListItemModelImplCopyWith<_$PokemonListItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
