// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_type_endpoint_dsts_configuration.dart';
import 'resource_type_endpoint_features_rule.dart';
import 'resource_type_extension.dart';
import 'token_auth_configuration.dart';

class ResourceTypeEndpoint {
  /// Api version.
  final pulumi.Input<String>? apiVersion;
  /// The api versions.
  final pulumi.Input<List<String>>? apiVersions;
  /// The data boundary.
  final pulumi.Input<String>? dataBoundary;
  /// The dsts configuration.
  final pulumi.Input<ResourceTypeEndpointDstsConfiguration>? dstsConfiguration;
  /// Whether the endpoint is enabled.
  final pulumi.Input<bool>? enabled;
  /// The endpoint type.
  final pulumi.Input<String>? endpointType;
  /// The endpoint uri.
  final pulumi.Input<String>? endpointUri;
  /// The extensions.
  final pulumi.Input<List<ResourceTypeExtension>>? extensions;
  /// The features rule.
  final pulumi.Input<ResourceTypeEndpointFeaturesRule>? featuresRule;
  /// Resource type endpoint kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The locations.
  final pulumi.Input<List<String>>? locations;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// The sku link.
  final pulumi.Input<String>? skuLink;
  /// The timeout.
  final pulumi.Input<String>? timeout;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfiguration>? tokenAuthConfiguration;
  /// List of zones.
  final pulumi.Input<List<String>>? zones;

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
      'dstsConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceTypeEndpointDstsConfiguration, Map<String, dynamic>>(dstsConfiguration, (value) => value.toMap()),
      'enabled': ?enabled,
      'endpointType': ?endpointType,
      'endpointUri': ?endpointUri,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<ResourceTypeExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'featuresRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeEndpointFeaturesRule, Map<String, dynamic>>(featuresRule, (value) => value.toMap()),
      'kind': ?kind,
      'locations': ?locations,
      'requiredFeatures': ?requiredFeatures,
      'skuLink': ?skuLink,
      'timeout': ?timeout,
      'tokenAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<TokenAuthConfiguration, Map<String, dynamic>>(tokenAuthConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ResourceTypeEndpoint.fromMap(Map<String, dynamic> map) {
    return ResourceTypeEndpoint(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      apiVersions: map['apiVersions'] == null ? null : ((map['apiVersions'] as List).cast<String>()).input(),
      dataBoundary: map['dataBoundary'] == null ? null : (map['dataBoundary'] as String).input(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : (ResourceTypeEndpointDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri'] as String).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<ResourceTypeExtension>(map['extensions'], (value) => ResourceTypeExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      featuresRule: map['featuresRule'] == null ? null : (ResourceTypeEndpointFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
      skuLink: map['skuLink'] == null ? null : (map['skuLink'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : (TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

