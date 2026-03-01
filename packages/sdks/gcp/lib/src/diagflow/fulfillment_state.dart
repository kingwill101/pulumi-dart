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
  /// Format: projects/<Project ID>/agent/fulfillment - projects/<Project ID>/locations/<Location ID>/agent/fulfillment
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
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<FulfillmentFeature>>? features,
    pulumi.Output<FulfillmentGenericWebService>? genericWebService,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      features = pulumi.Input.asOptionalInput<List<FulfillmentFeature>>(features),
      genericWebService = pulumi.Input.asOptionalInput<FulfillmentGenericWebService>(genericWebService),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enabled': ?enabled,
      'features': ?pulumi.Input.mapOptionalInputValue<List<FulfillmentFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<FulfillmentFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<FulfillmentGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
    };
  }

  factory FulfillmentState.fromMap(Map<String, dynamic> map) {
    return FulfillmentState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      features: map['features'] == null ? null : pulumi.Output.create<List<FulfillmentFeature>>(pulumi.Input.decodeList<FulfillmentFeature>(map['features'], (value) => FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>()))),
      genericWebService: map['genericWebService'] == null ? null : pulumi.Output.create<FulfillmentGenericWebService>(FulfillmentGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

