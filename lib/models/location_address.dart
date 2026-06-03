import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_address.freezed.dart';
part 'location_address.g.dart';

@freezed
abstract class Properties with _$Properties {
  const factory Properties({
    @JsonKey(name: 'full_address') String? fullAddress,
    @JsonKey(name: 'name_preferred') String? namePreferred,
    @JsonKey(name: 'place_formatted') String? placeFormatted,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

@freezed
abstract class Feature with _$Feature {
  const factory Feature({
    required String type,
    required String id,
    required Properties properties,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}

@freezed
abstract class LocationAddressResponse with _$LocationAddressResponse {
  const factory LocationAddressResponse({
    required String type,
    required List<Feature> features,
  }) = _LocationAddressResponse;

  factory LocationAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressResponseFromJson(json);
}
