// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_response.dart';
import 'api_profile_response.dart';
import 'provider_extended_location_response.dart';
import 'zone_mapping_response.dart';

/// Resource type managed by the resource provider.
class ProviderResourceTypeResponse {
  /// The aliases that are supported by this resource type.
  final pulumi.Input<List<AliasResponse>>? aliases;
  /// The API profiles for the resource provider.
  final pulumi.Input<List<ApiProfileResponse>> apiProfiles;
  /// The API version.
  final pulumi.Input<List<String>>? apiVersions;
  /// The additional capabilities offered by this resource type.
  final pulumi.Input<String>? capabilities;
  /// The default API version.
  final pulumi.Input<String> defaultApiVersion;
  /// The location mappings that are supported by this resource type.
  final pulumi.Input<List<ProviderExtendedLocationResponse>>? locationMappings;
  /// The collection of locations where this resource type can be created.
  final pulumi.Input<List<String>>? locations;
  /// The properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// The resource type.
  final pulumi.Input<String>? resourceType;
  final pulumi.Input<List<ZoneMappingResponse>>? zoneMappings;

  /// Creates a new [ProviderResourceTypeResponse].
  /// [aliases] The aliases that are supported by this resource type.
  /// [apiProfiles] The API profiles for the resource provider.
  /// [apiVersions] The API version.
  /// [capabilities] The additional capabilities offered by this resource type.
  /// [defaultApiVersion] The default API version.
  /// [locationMappings] The location mappings that are supported by this resource type.
  /// [locations] The collection of locations where this resource type can be created.
  /// [properties] The properties.
  /// [resourceType] The resource type.
  /// [zoneMappings] Optional.
  const ProviderResourceTypeResponse({
    this.aliases,
    required this.apiProfiles,
    this.apiVersions,
    this.capabilities,
    required this.defaultApiVersion,
    this.locationMappings,
    this.locations,
    this.properties,
    this.resourceType,
    this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliases': ?pulumi.Input.mapOptionalInputValue<List<AliasResponse>, List<Map<String, dynamic>>>(aliases, (value) => pulumi.Input.encodeList<AliasResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiProfiles': pulumi.Input.mapInputValue<List<ApiProfileResponse>, List<Map<String, dynamic>>>(apiProfiles, (value) => pulumi.Input.encodeList<ApiProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiVersions': ?apiVersions,
      'capabilities': ?capabilities,
      'defaultApiVersion': defaultApiVersion,
      'locationMappings': ?pulumi.Input.mapOptionalInputValue<List<ProviderExtendedLocationResponse>, List<Map<String, dynamic>>>(locationMappings, (value) => pulumi.Input.encodeList<ProviderExtendedLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?locations,
      'properties': ?properties,
      'resourceType': ?resourceType,
      'zoneMappings': ?pulumi.Input.mapOptionalInputValue<List<ZoneMappingResponse>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<ZoneMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProviderResourceTypeResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResourceTypeResponse(
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AliasResponse>(guardedValue, (value) => AliasResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProfileResponse>(map['apiProfiles']!, (value) => ApiProfileResponse.fromMap((value as Map).cast<String, dynamic>()))),
      apiVersions: (() { final guardedValue = map['apiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultApiVersion: pulumi.Input.fromValue(map['defaultApiVersion'] as String),
      locationMappings: (() { final guardedValue = map['locationMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProviderExtendedLocationResponse>(guardedValue, (value) => ProviderExtendedLocationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneMappings: (() { final guardedValue = map['zoneMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZoneMappingResponse>(guardedValue, (value) => ZoneMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

