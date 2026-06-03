// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Properties _$PropertiesFromJson(Map<String, dynamic> json) => _Properties(
  fullAddress: json['full_address'] as String?,
  namePreferred: json['name_preferred'] as String?,
  placeFormatted: json['place_formatted'] as String?,
);

Map<String, dynamic> _$PropertiesToJson(_Properties instance) =>
    <String, dynamic>{
      'full_address': instance.fullAddress,
      'name_preferred': instance.namePreferred,
      'place_formatted': instance.placeFormatted,
    };

_Feature _$FeatureFromJson(Map<String, dynamic> json) => _Feature(
  type: json['type'] as String,
  id: json['id'] as String,
  properties: Properties.fromJson(json['properties'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FeatureToJson(_Feature instance) => <String, dynamic>{
  'type': instance.type,
  'id': instance.id,
  'properties': instance.properties,
};

_LocationAddressResponse _$LocationAddressResponseFromJson(
  Map<String, dynamic> json,
) => _LocationAddressResponse(
  type: json['type'] as String,
  features: (json['features'] as List<dynamic>)
      .map((e) => Feature.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LocationAddressResponseToJson(
  _LocationAddressResponse instance,
) => <String, dynamic>{'type': instance.type, 'features': instance.features};
