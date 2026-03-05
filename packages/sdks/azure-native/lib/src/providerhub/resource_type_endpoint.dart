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
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiVersions: (() { final guardedValue = map['apiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataBoundary: (() { final guardedValue = map['dataBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dstsConfiguration: (() { final guardedValue = map['dstsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeEndpointDstsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceTypeExtension>(guardedValue, (value) => ResourceTypeExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      featuresRule: (() { final guardedValue = map['featuresRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeEndpointFeaturesRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skuLink: (() { final guardedValue = map['skuLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenAuthConfiguration: (() { final guardedValue = map['tokenAuthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenAuthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

