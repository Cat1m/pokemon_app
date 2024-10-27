// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  List<PokemonTypeModel> get typesList => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprites')
  PokemonSpritesModel get sprites => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'abilities')
  List<PokemonAbilityModel> get abilitiesList =>
      throw _privateConstructorUsedError;
  List<PokemonStatModel> get stats => throw _privateConstructorUsedError;

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'types') List<PokemonTypeModel> typesList,
      @JsonKey(name: 'sprites') PokemonSpritesModel sprites,
      int height,
      int weight,
      @JsonKey(name: 'abilities') List<PokemonAbilityModel> abilitiesList,
      List<PokemonStatModel> stats});

  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typesList = null,
    Object? sprites = null,
    Object? height = null,
    Object? weight = null,
    Object? abilitiesList = null,
    Object? stats = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typesList: null == typesList
          ? _value.typesList
          : typesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilitiesList: null == abilitiesList
          ? _value.abilitiesList
          : abilitiesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityModel>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatModel>,
    ) as $Val);
  }

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesModelCopyWith<$Res> get sprites {
    return $PokemonSpritesModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
          _$PokemonModelImpl value, $Res Function(_$PokemonModelImpl) then) =
      __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'types') List<PokemonTypeModel> typesList,
      @JsonKey(name: 'sprites') PokemonSpritesModel sprites,
      int height,
      int weight,
      @JsonKey(name: 'abilities') List<PokemonAbilityModel> abilitiesList,
      List<PokemonStatModel> stats});

  @override
  $PokemonSpritesModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
      _$PokemonModelImpl _value, $Res Function(_$PokemonModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typesList = null,
    Object? sprites = null,
    Object? height = null,
    Object? weight = null,
    Object? abilitiesList = null,
    Object? stats = null,
  }) {
    return _then(_$PokemonModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typesList: null == typesList
          ? _value._typesList
          : typesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesModel,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilitiesList: null == abilitiesList
          ? _value._abilitiesList
          : abilitiesList // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityModel>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<PokemonStatModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonModelImpl extends _PokemonModel {
  const _$PokemonModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'types') required final List<PokemonTypeModel> typesList,
      @JsonKey(name: 'sprites') required this.sprites,
      required this.height,
      required this.weight,
      @JsonKey(name: 'abilities')
      required final List<PokemonAbilityModel> abilitiesList,
      required final List<PokemonStatModel> stats})
      : _typesList = typesList,
        _abilitiesList = abilitiesList,
        _stats = stats,
        super._();

  factory _$PokemonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<PokemonTypeModel> _typesList;
  @override
  @JsonKey(name: 'types')
  List<PokemonTypeModel> get typesList {
    if (_typesList is EqualUnmodifiableListView) return _typesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_typesList);
  }

  @override
  @JsonKey(name: 'sprites')
  final PokemonSpritesModel sprites;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonAbilityModel> _abilitiesList;
  @override
  @JsonKey(name: 'abilities')
  List<PokemonAbilityModel> get abilitiesList {
    if (_abilitiesList is EqualUnmodifiableListView) return _abilitiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilitiesList);
  }

  final List<PokemonStatModel> _stats;
  @override
  List<PokemonStatModel> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  String toString() {
    return 'PokemonModel(id: $id, name: $name, typesList: $typesList, sprites: $sprites, height: $height, weight: $weight, abilitiesList: $abilitiesList, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._typesList, _typesList) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._abilitiesList, _abilitiesList) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_typesList),
      sprites,
      height,
      weight,
      const DeepCollectionEquality().hash(_abilitiesList),
      const DeepCollectionEquality().hash(_stats));

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonModel extends PokemonModel {
  const factory _PokemonModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'types') required final List<PokemonTypeModel> typesList,
      @JsonKey(name: 'sprites') required final PokemonSpritesModel sprites,
      required final int height,
      required final int weight,
      @JsonKey(name: 'abilities')
      required final List<PokemonAbilityModel> abilitiesList,
      required final List<PokemonStatModel> stats}) = _$PokemonModelImpl;
  const _PokemonModel._() : super._();

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$PokemonModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'types')
  List<PokemonTypeModel> get typesList;
  @override
  @JsonKey(name: 'sprites')
  PokemonSpritesModel get sprites;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(name: 'abilities')
  List<PokemonAbilityModel> get abilitiesList;
  @override
  List<PokemonStatModel> get stats;

  /// Create a copy of PokemonModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeModel {
  TypeModel get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeModelCopyWith<PokemonTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeModelCopyWith<$Res> {
  factory $PokemonTypeModelCopyWith(
          PokemonTypeModel value, $Res Function(PokemonTypeModel) then) =
      _$PokemonTypeModelCopyWithImpl<$Res, PokemonTypeModel>;
  @useResult
  $Res call({TypeModel type});

  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeModelCopyWithImpl<$Res, $Val extends PokemonTypeModel>
    implements $PokemonTypeModelCopyWith<$Res> {
  _$PokemonTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ) as $Val);
  }

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res> get type {
    return $TypeModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeModelImplCopyWith<$Res>
    implements $PokemonTypeModelCopyWith<$Res> {
  factory _$$PokemonTypeModelImplCopyWith(_$PokemonTypeModelImpl value,
          $Res Function(_$PokemonTypeModelImpl) then) =
      __$$PokemonTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TypeModel type});

  @override
  $TypeModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeModelImplCopyWithImpl<$Res>
    extends _$PokemonTypeModelCopyWithImpl<$Res, _$PokemonTypeModelImpl>
    implements _$$PokemonTypeModelImplCopyWith<$Res> {
  __$$PokemonTypeModelImplCopyWithImpl(_$PokemonTypeModelImpl _value,
      $Res Function(_$PokemonTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$PokemonTypeModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeModelImpl implements _PokemonTypeModel {
  const _$PokemonTypeModelImpl({required this.type});

  factory _$PokemonTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeModelImplFromJson(json);

  @override
  final TypeModel type;

  @override
  String toString() {
    return 'PokemonTypeModel(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeModelImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      __$$PokemonTypeModelImplCopyWithImpl<_$PokemonTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeModel implements PokemonTypeModel {
  const factory _PokemonTypeModel({required final TypeModel type}) =
      _$PokemonTypeModelImpl;

  factory _PokemonTypeModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeModelImpl.fromJson;

  @override
  TypeModel get type;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
mixin _$TypeModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res, TypeModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res, $Val extends TypeModel>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeModelImplCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$$TypeModelImplCopyWith(
          _$TypeModelImpl value, $Res Function(_$TypeModelImpl) then) =
      __$$TypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TypeModelImplCopyWithImpl<$Res>
    extends _$TypeModelCopyWithImpl<$Res, _$TypeModelImpl>
    implements _$$TypeModelImplCopyWith<$Res> {
  __$$TypeModelImplCopyWithImpl(
      _$TypeModelImpl _value, $Res Function(_$TypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TypeModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeModelImpl implements _TypeModel {
  const _$TypeModelImpl({required this.name});

  factory _$TypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TypeModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      __$$TypeModelImplCopyWithImpl<_$TypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeModelImplToJson(
      this,
    );
  }
}

abstract class _TypeModel implements TypeModel {
  const factory _TypeModel({required final String name}) = _$TypeModelImpl;

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$TypeModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpritesModel _$PokemonSpritesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpritesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesModel {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesModelCopyWith<PokemonSpritesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesModelCopyWith<$Res> {
  factory $PokemonSpritesModelCopyWith(
          PokemonSpritesModel value, $Res Function(PokemonSpritesModel) then) =
      _$PokemonSpritesModelCopyWithImpl<$Res, PokemonSpritesModel>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$PokemonSpritesModelCopyWithImpl<$Res, $Val extends PokemonSpritesModel>
    implements $PokemonSpritesModelCopyWith<$Res> {
  _$PokemonSpritesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpritesModelImplCopyWith<$Res>
    implements $PokemonSpritesModelCopyWith<$Res> {
  factory _$$PokemonSpritesModelImplCopyWith(_$PokemonSpritesModelImpl value,
          $Res Function(_$PokemonSpritesModelImpl) then) =
      __$$PokemonSpritesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$PokemonSpritesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpritesModelCopyWithImpl<$Res, _$PokemonSpritesModelImpl>
    implements _$$PokemonSpritesModelImplCopyWith<$Res> {
  __$$PokemonSpritesModelImplCopyWithImpl(_$PokemonSpritesModelImpl _value,
      $Res Function(_$PokemonSpritesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$PokemonSpritesModelImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesModelImpl implements _PokemonSpritesModel {
  const _$PokemonSpritesModelImpl(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$PokemonSpritesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesModelImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'PokemonSpritesModel(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesModelImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      __$$PokemonSpritesModelImplCopyWithImpl<_$PokemonSpritesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpritesModel implements PokemonSpritesModel {
  const factory _PokemonSpritesModel(
      {@JsonKey(name: 'front_default')
      required final String frontDefault}) = _$PokemonSpritesModelImpl;

  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesModelImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;

  /// Create a copy of PokemonSpritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesModelImplCopyWith<_$PokemonSpritesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAbilityModel _$PokemonAbilityModelFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityModel {
  AbilityModel get ability => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityModelCopyWith<PokemonAbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityModelCopyWith<$Res> {
  factory $PokemonAbilityModelCopyWith(
          PokemonAbilityModel value, $Res Function(PokemonAbilityModel) then) =
      _$PokemonAbilityModelCopyWithImpl<$Res, PokemonAbilityModel>;
  @useResult
  $Res call({AbilityModel ability});

  $AbilityModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityModelCopyWithImpl<$Res, $Val extends PokemonAbilityModel>
    implements $PokemonAbilityModelCopyWith<$Res> {
  _$PokemonAbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityModel,
    ) as $Val);
  }

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbilityModelCopyWith<$Res> get ability {
    return $AbilityModelCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilityModelImplCopyWith<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  factory _$$PokemonAbilityModelImplCopyWith(_$PokemonAbilityModelImpl value,
          $Res Function(_$PokemonAbilityModelImpl) then) =
      __$$PokemonAbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AbilityModel ability});

  @override
  $AbilityModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilityModelImplCopyWithImpl<$Res>
    extends _$PokemonAbilityModelCopyWithImpl<$Res, _$PokemonAbilityModelImpl>
    implements _$$PokemonAbilityModelImplCopyWith<$Res> {
  __$$PokemonAbilityModelImplCopyWithImpl(_$PokemonAbilityModelImpl _value,
      $Res Function(_$PokemonAbilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = null,
  }) {
    return _then(_$PokemonAbilityModelImpl(
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityModelImpl implements _PokemonAbilityModel {
  const _$PokemonAbilityModelImpl({required this.ability});

  factory _$PokemonAbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityModelImplFromJson(json);

  @override
  final AbilityModel ability;

  @override
  String toString() {
    return 'PokemonAbilityModel(ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityModelImpl &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ability);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      __$$PokemonAbilityModelImplCopyWithImpl<_$PokemonAbilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityModel implements PokemonAbilityModel {
  const factory _PokemonAbilityModel({required final AbilityModel ability}) =
      _$PokemonAbilityModelImpl;

  factory _PokemonAbilityModel.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityModelImpl.fromJson;

  @override
  AbilityModel get ability;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) {
  return _AbilityModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AbilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityModelCopyWith<AbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityModelCopyWith<$Res> {
  factory $AbilityModelCopyWith(
          AbilityModel value, $Res Function(AbilityModel) then) =
      _$AbilityModelCopyWithImpl<$Res, AbilityModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AbilityModelCopyWithImpl<$Res, $Val extends AbilityModel>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityModelImplCopyWith<$Res>
    implements $AbilityModelCopyWith<$Res> {
  factory _$$AbilityModelImplCopyWith(
          _$AbilityModelImpl value, $Res Function(_$AbilityModelImpl) then) =
      __$$AbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AbilityModelImplCopyWithImpl<$Res>
    extends _$AbilityModelCopyWithImpl<$Res, _$AbilityModelImpl>
    implements _$$AbilityModelImplCopyWith<$Res> {
  __$$AbilityModelImplCopyWithImpl(
      _$AbilityModelImpl _value, $Res Function(_$AbilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AbilityModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityModelImpl implements _AbilityModel {
  const _$AbilityModelImpl({required this.name});

  factory _$AbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AbilityModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      __$$AbilityModelImplCopyWithImpl<_$AbilityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityModel implements AbilityModel {
  const factory _AbilityModel({required final String name}) =
      _$AbilityModelImpl;

  factory _AbilityModel.fromJson(Map<String, dynamic> json) =
      _$AbilityModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of AbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStatModel _$PokemonStatModelFromJson(Map<String, dynamic> json) {
  return _PokemonStatModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatModel {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  StatModel get stat => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatModelCopyWith<PokemonStatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatModelCopyWith<$Res> {
  factory $PokemonStatModelCopyWith(
          PokemonStatModel value, $Res Function(PokemonStatModel) then) =
      _$PokemonStatModelCopyWithImpl<$Res, PokemonStatModel>;
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, StatModel stat});

  $StatModelCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatModelCopyWithImpl<$Res, $Val extends PokemonStatModel>
    implements $PokemonStatModelCopyWith<$Res> {
  _$PokemonStatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatModel,
    ) as $Val);
  }

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatModelCopyWith<$Res> get stat {
    return $StatModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatModelImplCopyWith<$Res>
    implements $PokemonStatModelCopyWith<$Res> {
  factory _$$PokemonStatModelImplCopyWith(_$PokemonStatModelImpl value,
          $Res Function(_$PokemonStatModelImpl) then) =
      __$$PokemonStatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'base_stat') int baseStat, StatModel stat});

  @override
  $StatModelCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatModelImplCopyWithImpl<$Res>
    extends _$PokemonStatModelCopyWithImpl<$Res, _$PokemonStatModelImpl>
    implements _$$PokemonStatModelImplCopyWith<$Res> {
  __$$PokemonStatModelImplCopyWithImpl(_$PokemonStatModelImpl _value,
      $Res Function(_$PokemonStatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? stat = null,
  }) {
    return _then(_$PokemonStatModelImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatModelImpl implements _PokemonStatModel {
  const _$PokemonStatModelImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});

  factory _$PokemonStatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatModelImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final StatModel stat;

  @override
  String toString() {
    return 'PokemonStatModel(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatModelImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, stat);

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      __$$PokemonStatModelImplCopyWithImpl<_$PokemonStatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatModel implements PokemonStatModel {
  const factory _PokemonStatModel(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final StatModel stat}) = _$PokemonStatModelImpl;

  factory _PokemonStatModel.fromJson(Map<String, dynamic> json) =
      _$PokemonStatModelImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  StatModel get stat;

  /// Create a copy of PokemonStatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatModelImplCopyWith<_$PokemonStatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatModel _$StatModelFromJson(Map<String, dynamic> json) {
  return _StatModel.fromJson(json);
}

/// @nodoc
mixin _$StatModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatModelCopyWith<StatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatModelCopyWith<$Res> {
  factory $StatModelCopyWith(StatModel value, $Res Function(StatModel) then) =
      _$StatModelCopyWithImpl<$Res, StatModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StatModelCopyWithImpl<$Res, $Val extends StatModel>
    implements $StatModelCopyWith<$Res> {
  _$StatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatModelImplCopyWith<$Res>
    implements $StatModelCopyWith<$Res> {
  factory _$$StatModelImplCopyWith(
          _$StatModelImpl value, $Res Function(_$StatModelImpl) then) =
      __$$StatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StatModelImplCopyWithImpl<$Res>
    extends _$StatModelCopyWithImpl<$Res, _$StatModelImpl>
    implements _$$StatModelImplCopyWith<$Res> {
  __$$StatModelImplCopyWithImpl(
      _$StatModelImpl _value, $Res Function(_$StatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StatModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatModelImpl implements _StatModel {
  const _$StatModelImpl({required this.name});

  factory _$StatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'StatModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatModelImplCopyWith<_$StatModelImpl> get copyWith =>
      __$$StatModelImplCopyWithImpl<_$StatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatModelImplToJson(
      this,
    );
  }
}

abstract class _StatModel implements StatModel {
  const factory _StatModel({required final String name}) = _$StatModelImpl;

  factory _StatModel.fromJson(Map<String, dynamic> json) =
      _$StatModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of StatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatModelImplCopyWith<_$StatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
