// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_endpoint_features_rule_response.dart';

class ResourceProviderEndpointResponse {
  /// The api versions.
  final pulumi.Input<List<String>>? apiVersions;
  /// Whether the endpoint is enabled.
  final pulumi.Input<bool>? enabled;
  /// The endpoint type.
  final pulumi.Input<String>? endpointType;
  /// The endpoint uri.
  final pulumi.Input<String>? endpointUri;
  /// The feature rules.
  final pulumi.Input<ResourceProviderEndpointFeaturesRuleResponse>? featuresRule;
  /// The locations.
  final pulumi.Input<List<String>>? locations;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// The sku link.
  final pulumi.Input<String>? skuLink;
  /// The timeout.
  final pulumi.Input<String>? timeout;

  /// Creates a new [ResourceProviderEndpointResponse].
  /// [apiVersions] The api versions.
  /// [enabled] Whether the endpoint is enabled.
  /// [endpointType] The endpoint type.
  /// [endpointUri] The endpoint uri.
  /// [featuresRule] The feature rules.
  /// [locations] The locations.
  /// [requiredFeatures] The required features.
  /// [skuLink] The sku link.
  /// [timeout] The timeout.
  ResourceProviderEndpointResponse({
    this.apiVersions,
    this.enabled,
    this.endpointType,
    this.endpointUri,
    this.featuresRule,
    this.locations,
    this.requiredFeatures,
    this.skuLink,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersions': ?apiVersions,
      'enabled': ?enabled,
      'endpointType': ?endpointType,
      'endpointUri': ?endpointUri,
      'featuresRule': ?pulumi.Input.mapOptionalInputValue<ResourceProviderEndpointFeaturesRuleResponse, Map<String, dynamic>>(featuresRule, (value) => value.toMap()),
      'locations': ?locations,
      'requiredFeatures': ?requiredFeatures,
      'skuLink': ?skuLink,
      'timeout': ?timeout,
    };
  }

  factory ResourceProviderEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderEndpointResponse(
      apiVersions: map['apiVersions'] == null ? null : ((map['apiVersions']! as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      featuresRule: map['featuresRule'] == null ? null : (ResourceProviderEndpointFeaturesRuleResponse.fromMap((map['featuresRule']! as Map).cast<String, dynamic>())).input(),
      locations: map['locations'] == null ? null : ((map['locations']! as List).cast<String>()).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures']! as List).cast<String>()).input(),
      skuLink: map['skuLink'] == null ? null : (map['skuLink']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}

