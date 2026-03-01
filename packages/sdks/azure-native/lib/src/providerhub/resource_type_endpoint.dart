// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_endpoint_dsts_configuration.dart';
import 'resource_type_endpoint_features_rule.dart';
import 'resource_type_extension.dart';
import 'token_auth_configuration.dart';

class ResourceTypeEndpoint {
  /// Api version.
  final String? apiVersion;
  /// The api versions.
  final List<String>? apiVersions;
  /// The data boundary.
  final String? dataBoundary;
  /// The dsts configuration.
  final ResourceTypeEndpointDstsConfiguration? dstsConfiguration;
  /// Whether the endpoint is enabled.
  final bool? enabled;
  /// The endpoint type.
  final String? endpointType;
  /// The endpoint uri.
  final String? endpointUri;
  /// The extensions.
  final List<ResourceTypeExtension>? extensions;
  /// The features rule.
  final ResourceTypeEndpointFeaturesRule? featuresRule;
  /// Resource type endpoint kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  /// The locations.
  final List<String>? locations;
  /// The required features.
  final List<String>? requiredFeatures;
  /// The sku link.
  final String? skuLink;
  /// The timeout.
  final String? timeout;
  /// The token auth configuration.
  final TokenAuthConfiguration? tokenAuthConfiguration;
  /// List of zones.
  final List<String>? zones;

  /// Creates a new [ResourceTypeEndpoint].
  /// [apiVersion] Api version.
  /// [apiVersions] The api versions.
  /// [dataBoundary] The data boundary.
  /// [dstsConfiguration] The dsts configuration.
  /// [enabled] Whether the endpoint is enabled.
  /// [endpointType] The endpoint type.
  /// [endpointUri] The endpoint uri.
  /// [extensions] The extensions.
  /// [featuresRule] The features rule.
  /// [kind] Resource type endpoint kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [locations] The locations.
  /// [requiredFeatures] The required features.
  /// [skuLink] The sku link.
  /// [timeout] The timeout.
  /// [tokenAuthConfiguration] The token auth configuration.
  /// [zones] List of zones.
  ResourceTypeEndpoint({
    this.apiVersion,
    this.apiVersions,
    this.dataBoundary,
    this.dstsConfiguration,
    this.enabled,
    this.endpointType,
    this.endpointUri,
    this.extensions,
    this.featuresRule,
    this.kind,
    this.locations,
    this.requiredFeatures,
    this.skuLink,
    this.timeout,
    this.tokenAuthConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'apiVersions': ?apiVersions,
      'dataBoundary': ?dataBoundary,
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'enabled': ?enabled,
      'endpointType': ?endpointType,
      'endpointUri': ?endpointUri,
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<ResourceTypeExtension, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'featuresRule': ?featuresRule == null ? null : featuresRule!.toMap(),
      'kind': ?kind,
      'locations': ?locations,
      'requiredFeatures': ?requiredFeatures,
      'skuLink': ?skuLink,
      'timeout': ?timeout,
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
      'zones': ?zones,
    };
  }

  factory ResourceTypeEndpoint.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEndpoint(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      apiVersions: map['apiVersions'] == null ? null : (map['apiVersions'] as List).cast<String>(),
      dataBoundary: map['dataBoundary'] == null ? null : map['dataBoundary'] as String,
      dstsConfiguration: map['dstsConfiguration'] == null ? null : ResourceTypeEndpointDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<ResourceTypeExtension>(map['extensions'], (value) => ResourceTypeExtension.fromMap((value as Map).cast<String, dynamic>())),
      featuresRule: map['featuresRule'] == null ? null : ResourceTypeEndpointFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      skuLink: map['skuLink'] == null ? null : map['skuLink'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

