// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_response.dart';
import 'api_profile_response.dart';
import 'provider_extended_location_response.dart';
import 'zone_mapping_response.dart';

/// Resource type managed by the resource provider.
class ProviderResourceTypeResponse {
  /// The aliases that are supported by this resource type.
  final List<AliasResponse>? aliases;
  /// The API profiles for the resource provider.
  final List<ApiProfileResponse> apiProfiles;
  /// The API version.
  final List<String>? apiVersions;
  /// The additional capabilities offered by this resource type.
  final String? capabilities;
  /// The default API version.
  final String defaultApiVersion;
  /// The location mappings that are supported by this resource type.
  final List<ProviderExtendedLocationResponse>? locationMappings;
  /// The collection of locations where this resource type can be created.
  final List<String>? locations;
  /// The properties.
  final Map<String, String>? properties;
  /// The resource type.
  final String? resourceType;
  final List<ZoneMappingResponse>? zoneMappings;

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
  ProviderResourceTypeResponse({
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
      'aliases': ?aliases == null ? null : pulumi.Input.encodeList<AliasResponse, Map<String, dynamic>>(aliases!, (value) => value.toMap()),
      'apiProfiles': pulumi.Input.encodeList<ApiProfileResponse, Map<String, dynamic>>(apiProfiles, (value) => value.toMap()),
      'apiVersions': ?apiVersions,
      'capabilities': ?capabilities,
      'defaultApiVersion': defaultApiVersion,
      'locationMappings': ?locationMappings == null ? null : pulumi.Input.encodeList<ProviderExtendedLocationResponse, Map<String, dynamic>>(locationMappings!, (value) => value.toMap()),
      'locations': ?locations,
      'properties': ?properties,
      'resourceType': ?resourceType,
      'zoneMappings': ?zoneMappings == null ? null : pulumi.Input.encodeList<ZoneMappingResponse, Map<String, dynamic>>(zoneMappings!, (value) => value.toMap()),
    };
  }

  factory ProviderResourceTypeResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResourceTypeResponse(
      aliases: map['aliases'] == null ? null : pulumi.Input.decodeList<AliasResponse>(map['aliases'], (value) => AliasResponse.fromMap((value as Map).cast<String, dynamic>())),
      apiProfiles: pulumi.Input.decodeList<ApiProfileResponse>(map['apiProfiles'], (value) => ApiProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      apiVersions: map['apiVersions'] == null ? null : (map['apiVersions'] as List).cast<String>(),
      capabilities: map['capabilities'] == null ? null : map['capabilities'] as String,
      defaultApiVersion: map['defaultApiVersion'] as String,
      locationMappings: map['locationMappings'] == null ? null : pulumi.Input.decodeList<ProviderExtendedLocationResponse>(map['locationMappings'], (value) => ProviderExtendedLocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      zoneMappings: map['zoneMappings'] == null ? null : pulumi.Input.decodeList<ZoneMappingResponse>(map['zoneMappings'], (value) => ZoneMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

