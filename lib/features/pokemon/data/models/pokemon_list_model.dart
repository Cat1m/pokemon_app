import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_model.freezed.dart';
part 'pokemon_list_model.g.dart';

@freezed
class PokemonListModel with _$PokemonListModel {
  const factory PokemonListModel({
    required int count,
    required String? next,
    required String? previous,
    required List<PokemonListItemModel> results,
  }) = _PokemonListModel;

  factory PokemonListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListModelFromJson(json);
}

@freezed
class PokemonListItemModel with _$PokemonListItemModel {
  const factory PokemonListItemModel({
    required String name,
    required String url,
  }) = _PokemonListItemModel;

  factory PokemonListItemModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemModelFromJson(json);
}
