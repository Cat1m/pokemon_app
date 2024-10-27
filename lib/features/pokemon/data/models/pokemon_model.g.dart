// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonModelImpl _$$PokemonModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      typesList: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites:
          PokemonSpritesModel.fromJson(json['sprites'] as Map<String, dynamic>),
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      abilitiesList: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonModelImplToJson(_$PokemonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'types': instance.typesList,
      'sprites': instance.sprites,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilitiesList,
      'stats': instance.stats,
    };

_$PokemonTypeModelImpl _$$PokemonTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeModelImpl(
      type: TypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeModelImplToJson(
        _$PokemonTypeModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$TypeModelImpl _$$TypeModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TypeModelImplToJson(_$TypeModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PokemonSpritesModelImpl _$$PokemonSpritesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpritesModelImpl(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$PokemonSpritesModelImplToJson(
        _$PokemonSpritesModelImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$PokemonAbilityModelImpl _$$PokemonAbilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAbilityModelImpl(
      ability: AbilityModel.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityModelImplToJson(
        _$PokemonAbilityModelImpl instance) =>
    <String, dynamic>{
      'ability': instance.ability,
    };

_$AbilityModelImpl _$$AbilityModelImplFromJson(Map<String, dynamic> json) =>
    _$AbilityModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AbilityModelImplToJson(_$AbilityModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PokemonStatModelImpl _$$PokemonStatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonStatModelImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: StatModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatModelImplToJson(
        _$PokemonStatModelImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

_$StatModelImpl _$$StatModelImplFromJson(Map<String, dynamic> json) =>
    _$StatModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$StatModelImplToJson(_$StatModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
