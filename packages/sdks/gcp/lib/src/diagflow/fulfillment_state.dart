// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fulfillment_feature.dart';
import 'fulfillment_generic_web_service.dart';

/// Input properties used for looking up and filtering Fulfillment resources.
class FulfillmentState {
  /// The human-readable name of the fulfillment, unique within the agent.
  final pulumi.Input<String>? displayName;

  /// Whether fulfillment is enabled.
  final pulumi.Input<bool>? enabled;

  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  final pulumi.Input<List<FulfillmentFeature>>? features;

  /// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// Structure is documented below.
  final pulumi.Input<FulfillmentGenericWebService>? genericWebService;

  /// The unique identifier of the fulfillment.
  /// Format: projects/&lt;Project ID&gt;/agent/fulfillment - projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent/fulfillment
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [FulfillmentState].
  /// [displayName] The human-readable name of the fulfillment, unique within the agent.
  /// [enabled] Whether fulfillment is enabled.
  /// [features] The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// [name] The unique identifier of the fulfillment.
  /// [project] The ID of the project in which the resource belongs.
  FulfillmentState({
    this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enabled': ?enabled,
      'features':
          ?pulumi.Input.mapOptionalInputValue<
            List<FulfillmentFeature>,
            List<Map<String, dynamic>>
          >(
            features,
            (value) =>
                pulumi.Input.encodeList<
                  FulfillmentFeature,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'genericWebService':
          ?pulumi.Input.mapOptionalInputValue<
            FulfillmentGenericWebService,
            Map<String, dynamic>
          >(genericWebService, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
    };
  }

  factory FulfillmentState.fromMap(Map<String, dynamic> map) {
    return FulfillmentState(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      features: (() {
        final guardedValue = map['features'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FulfillmentFeature>(
            guardedValue,
            (value) => FulfillmentFeature.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      genericWebService: (() {
        final guardedValue = map['genericWebService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FulfillmentGenericWebService.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
