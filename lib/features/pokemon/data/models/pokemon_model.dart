import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app/features/pokemon/domain/entities/pokemon.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required int id,
    required String name,
    @JsonKey(name: 'types') required List<PokemonTypeModel> typesList,
    @JsonKey(name: 'sprites') required PokemonSpritesModel sprites,
    required int height,
    required int weight,
    @JsonKey(name: 'abilities')
    required List<PokemonAbilityModel> abilitiesList,
    required List<PokemonStatModel> stats,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);

  const PokemonModel._();

  Pokemon toDomain() {
    return Pokemon(
      id: id,
      name: name,
      types: typesList.map((type) => type.type.name).toList(),
      imageUrl: sprites.frontDefault,
      height: height,
      weight: weight,
      abilities: abilitiesList.map((ability) => ability.ability.name).toList(),
      stats: Map.fromEntries(
        stats.map(
          (stat) => MapEntry(stat.stat.name, stat.baseStat),
        ),
      ),
    );
  }
}

@freezed
class PokemonTypeModel with _$PokemonTypeModel {
  const factory PokemonTypeModel({
    required TypeModel type,
  }) = _PokemonTypeModel;

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeModelFromJson(json);
}

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel({
    required String name,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}

@freezed
class PokemonSpritesModel with _$PokemonSpritesModel {
  const factory PokemonSpritesModel({
    @JsonKey(name: 'front_default') required String frontDefault,
  }) = _PokemonSpritesModel;

  factory PokemonSpritesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesModelFromJson(json);
}

@freezed
class PokemonAbilityModel with _$PokemonAbilityModel {
  const factory PokemonAbilityModel({
    required AbilityModel ability,
  }) = _PokemonAbilityModel;

  factory PokemonAbilityModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityModelFromJson(json);
}

@freezed
class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    required String name,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}

@freezed
class PokemonStatModel with _$PokemonStatModel {
  const factory PokemonStatModel({
    @JsonKey(name: 'base_stat') required int baseStat,
    required StatModel stat,
  }) = _PokemonStatModel;

  factory PokemonStatModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatModelFromJson(json);
}

@freezed
class StatModel with _$StatModel {
  const factory StatModel({
    required String name,
  }) = _StatModel;

  factory StatModel.fromJson(Map<String, dynamic> json) =>
      _$StatModelFromJson(json);
}
