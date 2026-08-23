// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_fulfillment_feature.dart';
import 'environment_fulfillment_generic_web_service.dart';

class EnvironmentFulfillment {
  /// The human-readable name of the fulfillment, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  final pulumi.Input<List<EnvironmentFulfillmentFeature>>? features;
  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentFulfillmentGenericWebService>? genericWebService;
  /// The unique identifier of the fulfillment. Supports the following formats:
  /// - projects/&lt;Project ID&gt;/agent/fulfillment
  /// - projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent/fulfillment
  final pulumi.Input<String>? name;

  /// Creates a new [EnvironmentFulfillment].
  /// [displayName] The human-readable name of the fulfillment, unique within the agent.
  /// [features] The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Represents configuration for a generic web service.
  /// [name] The unique identifier of the fulfillment. Supports the following formats:
  const EnvironmentFulfillment({
    this.displayName,
    this.features,
    this.genericWebService,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'features': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentFulfillmentFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<EnvironmentFulfillmentFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<EnvironmentFulfillmentGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory EnvironmentFulfillment.fromMap(Map<String, dynamic> map) {
    return EnvironmentFulfillment(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentFulfillmentFeature>(guardedValue, (value) => EnvironmentFulfillmentFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      genericWebService: (() { final guardedValue = map['genericWebService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentFulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
