// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Properties {

@JsonKey(name: 'full_address') String? get fullAddress;@JsonKey(name: 'name_preferred') String? get namePreferred;@JsonKey(name: 'place_formatted') String? get placeFormatted;
/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertiesCopyWith<Properties> get copyWith => _$PropertiesCopyWithImpl<Properties>(this as Properties, _$identity);

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Properties&&(identical(other.fullAddress, fullAddress) || other.fullAddress == fullAddress)&&(identical(other.namePreferred, namePreferred) || other.namePreferred == namePreferred)&&(identical(other.placeFormatted, placeFormatted) || other.placeFormatted == placeFormatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullAddress,namePreferred,placeFormatted);

@override
String toString() {
  return 'Properties(fullAddress: $fullAddress, namePreferred: $namePreferred, placeFormatted: $placeFormatted)';
}


}

/// @nodoc
abstract mixin class $PropertiesCopyWith<$Res>  {
  factory $PropertiesCopyWith(Properties value, $Res Function(Properties) _then) = _$PropertiesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'full_address') String? fullAddress,@JsonKey(name: 'name_preferred') String? namePreferred,@JsonKey(name: 'place_formatted') String? placeFormatted
});




}
/// @nodoc
class _$PropertiesCopyWithImpl<$Res>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._self, this._then);

  final Properties _self;
  final $Res Function(Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullAddress = freezed,Object? namePreferred = freezed,Object? placeFormatted = freezed,}) {
  return _then(_self.copyWith(
fullAddress: freezed == fullAddress ? _self.fullAddress : fullAddress // ignore: cast_nullable_to_non_nullable
as String?,namePreferred: freezed == namePreferred ? _self.namePreferred : namePreferred // ignore: cast_nullable_to_non_nullable
as String?,placeFormatted: freezed == placeFormatted ? _self.placeFormatted : placeFormatted // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Properties].
extension PropertiesPatterns on Properties {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Properties value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Properties value)  $default,){
final _that = this;
switch (_that) {
case _Properties():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Properties value)?  $default,){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_address')  String? fullAddress, @JsonKey(name: 'name_preferred')  String? namePreferred, @JsonKey(name: 'place_formatted')  String? placeFormatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.fullAddress,_that.namePreferred,_that.placeFormatted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_address')  String? fullAddress, @JsonKey(name: 'name_preferred')  String? namePreferred, @JsonKey(name: 'place_formatted')  String? placeFormatted)  $default,) {final _that = this;
switch (_that) {
case _Properties():
return $default(_that.fullAddress,_that.namePreferred,_that.placeFormatted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'full_address')  String? fullAddress, @JsonKey(name: 'name_preferred')  String? namePreferred, @JsonKey(name: 'place_formatted')  String? placeFormatted)?  $default,) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.fullAddress,_that.namePreferred,_that.placeFormatted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Properties implements Properties {
  const _Properties({@JsonKey(name: 'full_address') this.fullAddress, @JsonKey(name: 'name_preferred') this.namePreferred, @JsonKey(name: 'place_formatted') this.placeFormatted});
  factory _Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

@override@JsonKey(name: 'full_address') final  String? fullAddress;
@override@JsonKey(name: 'name_preferred') final  String? namePreferred;
@override@JsonKey(name: 'place_formatted') final  String? placeFormatted;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertiesCopyWith<_Properties> get copyWith => __$PropertiesCopyWithImpl<_Properties>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Properties&&(identical(other.fullAddress, fullAddress) || other.fullAddress == fullAddress)&&(identical(other.namePreferred, namePreferred) || other.namePreferred == namePreferred)&&(identical(other.placeFormatted, placeFormatted) || other.placeFormatted == placeFormatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullAddress,namePreferred,placeFormatted);

@override
String toString() {
  return 'Properties(fullAddress: $fullAddress, namePreferred: $namePreferred, placeFormatted: $placeFormatted)';
}


}

/// @nodoc
abstract mixin class _$PropertiesCopyWith<$Res> implements $PropertiesCopyWith<$Res> {
  factory _$PropertiesCopyWith(_Properties value, $Res Function(_Properties) _then) = __$PropertiesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'full_address') String? fullAddress,@JsonKey(name: 'name_preferred') String? namePreferred,@JsonKey(name: 'place_formatted') String? placeFormatted
});




}
/// @nodoc
class __$PropertiesCopyWithImpl<$Res>
    implements _$PropertiesCopyWith<$Res> {
  __$PropertiesCopyWithImpl(this._self, this._then);

  final _Properties _self;
  final $Res Function(_Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullAddress = freezed,Object? namePreferred = freezed,Object? placeFormatted = freezed,}) {
  return _then(_Properties(
fullAddress: freezed == fullAddress ? _self.fullAddress : fullAddress // ignore: cast_nullable_to_non_nullable
as String?,namePreferred: freezed == namePreferred ? _self.namePreferred : namePreferred // ignore: cast_nullable_to_non_nullable
as String?,placeFormatted: freezed == placeFormatted ? _self.placeFormatted : placeFormatted // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Feature {

 String get type; String get id; Properties get properties;
/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureCopyWith<Feature> get copyWith => _$FeatureCopyWithImpl<Feature>(this as Feature, _$identity);

  /// Serializes this Feature to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feature&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,properties);

@override
String toString() {
  return 'Feature(type: $type, id: $id, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $FeatureCopyWith<$Res>  {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) _then) = _$FeatureCopyWithImpl;
@useResult
$Res call({
 String type, String id, Properties properties
});


$PropertiesCopyWith<$Res> get properties;

}
/// @nodoc
class _$FeatureCopyWithImpl<$Res>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._self, this._then);

  final Feature _self;
  final $Res Function(Feature) _then;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? id = null,Object? properties = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Properties,
  ));
}
/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertiesCopyWith<$Res> get properties {
  
  return $PropertiesCopyWith<$Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// Adds pattern-matching-related methods to [Feature].
extension FeaturePatterns on Feature {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Feature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Feature value)  $default,){
final _that = this;
switch (_that) {
case _Feature():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Feature value)?  $default,){
final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String id,  Properties properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that.type,_that.id,_that.properties);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String id,  Properties properties)  $default,) {final _that = this;
switch (_that) {
case _Feature():
return $default(_that.type,_that.id,_that.properties);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String id,  Properties properties)?  $default,) {final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that.type,_that.id,_that.properties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Feature implements Feature {
  const _Feature({required this.type, required this.id, required this.properties});
  factory _Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);

@override final  String type;
@override final  String id;
@override final  Properties properties;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureCopyWith<_Feature> get copyWith => __$FeatureCopyWithImpl<_Feature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feature&&(identical(other.type, type) || other.type == type)&&(identical(other.id, id) || other.id == id)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,id,properties);

@override
String toString() {
  return 'Feature(type: $type, id: $id, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$FeatureCopyWith(_Feature value, $Res Function(_Feature) _then) = __$FeatureCopyWithImpl;
@override @useResult
$Res call({
 String type, String id, Properties properties
});


@override $PropertiesCopyWith<$Res> get properties;

}
/// @nodoc
class __$FeatureCopyWithImpl<$Res>
    implements _$FeatureCopyWith<$Res> {
  __$FeatureCopyWithImpl(this._self, this._then);

  final _Feature _self;
  final $Res Function(_Feature) _then;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? id = null,Object? properties = null,}) {
  return _then(_Feature(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as Properties,
  ));
}

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertiesCopyWith<$Res> get properties {
  
  return $PropertiesCopyWith<$Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// @nodoc
mixin _$LocationAddressResponse {

 String get type; List<Feature> get features;
/// Create a copy of LocationAddressResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationAddressResponseCopyWith<LocationAddressResponse> get copyWith => _$LocationAddressResponseCopyWithImpl<LocationAddressResponse>(this as LocationAddressResponse, _$identity);

  /// Serializes this LocationAddressResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationAddressResponse&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.features, features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(features));

@override
String toString() {
  return 'LocationAddressResponse(type: $type, features: $features)';
}


}

/// @nodoc
abstract mixin class $LocationAddressResponseCopyWith<$Res>  {
  factory $LocationAddressResponseCopyWith(LocationAddressResponse value, $Res Function(LocationAddressResponse) _then) = _$LocationAddressResponseCopyWithImpl;
@useResult
$Res call({
 String type, List<Feature> features
});




}
/// @nodoc
class _$LocationAddressResponseCopyWithImpl<$Res>
    implements $LocationAddressResponseCopyWith<$Res> {
  _$LocationAddressResponseCopyWithImpl(this._self, this._then);

  final LocationAddressResponse _self;
  final $Res Function(LocationAddressResponse) _then;

/// Create a copy of LocationAddressResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? features = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<Feature>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationAddressResponse].
extension LocationAddressResponsePatterns on LocationAddressResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationAddressResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationAddressResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationAddressResponse value)  $default,){
final _that = this;
switch (_that) {
case _LocationAddressResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationAddressResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LocationAddressResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  List<Feature> features)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationAddressResponse() when $default != null:
return $default(_that.type,_that.features);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  List<Feature> features)  $default,) {final _that = this;
switch (_that) {
case _LocationAddressResponse():
return $default(_that.type,_that.features);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  List<Feature> features)?  $default,) {final _that = this;
switch (_that) {
case _LocationAddressResponse() when $default != null:
return $default(_that.type,_that.features);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationAddressResponse implements LocationAddressResponse {
  const _LocationAddressResponse({required this.type, required final  List<Feature> features}): _features = features;
  factory _LocationAddressResponse.fromJson(Map<String, dynamic> json) => _$LocationAddressResponseFromJson(json);

@override final  String type;
 final  List<Feature> _features;
@override List<Feature> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}


/// Create a copy of LocationAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationAddressResponseCopyWith<_LocationAddressResponse> get copyWith => __$LocationAddressResponseCopyWithImpl<_LocationAddressResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationAddressResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationAddressResponse&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._features, _features));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_features));

@override
String toString() {
  return 'LocationAddressResponse(type: $type, features: $features)';
}


}

/// @nodoc
abstract mixin class _$LocationAddressResponseCopyWith<$Res> implements $LocationAddressResponseCopyWith<$Res> {
  factory _$LocationAddressResponseCopyWith(_LocationAddressResponse value, $Res Function(_LocationAddressResponse) _then) = __$LocationAddressResponseCopyWithImpl;
@override @useResult
$Res call({
 String type, List<Feature> features
});




}
/// @nodoc
class __$LocationAddressResponseCopyWithImpl<$Res>
    implements _$LocationAddressResponseCopyWith<$Res> {
  __$LocationAddressResponseCopyWithImpl(this._self, this._then);

  final _LocationAddressResponse _self;
  final $Res Function(_LocationAddressResponse) _then;

/// Create a copy of LocationAddressResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? features = null,}) {
  return _then(_LocationAddressResponse(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<Feature>,
  ));
}


}

// dart format on
