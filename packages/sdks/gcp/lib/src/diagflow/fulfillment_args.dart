// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fulfillment_feature.dart';
import 'fulfillment_generic_web_service.dart';

/// {@template pulumi_diagflow_fulfillment_fulfillment_args_doc}
/// The set of arguments for Fulfillment.
/// {@endtemplate}
/// {@macro pulumi_diagflow_fulfillment_fulfillment_args_doc}
class FulfillmentArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The human-readable name of the fulfillment, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Whether fulfillment is enabled.
  final pulumi.Input<bool>? enabled;
  /// The field defines whether the fulfillment is enabled for certain features.
  /// Structure is documented below.
  final pulumi.Input<List<FulfillmentFeature>>? features;
  /// Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// Structure is documented below.
  final pulumi.Input<FulfillmentGenericWebService>? genericWebService;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [FulfillmentArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human-readable name of the fulfillment, unique within the agent.
  /// [enabled] Whether fulfillment is enabled.
  /// [features] The field defines whether the fulfillment is enabled for certain features.
  /// [genericWebService] Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers.
  /// [project] The ID of the project in which the resource belongs.
  const FulfillmentArgs({
    this.deletionPolicy,
    required this.displayName,
    this.enabled,
    this.features,
    this.genericWebService,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'enabled': ?enabled,
      'features': ?pulumi.Input.mapOptionalInputValue<List<FulfillmentFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<FulfillmentFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<FulfillmentGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory FulfillmentArgs.fromMap(Map<String, dynamic> map) {
    return FulfillmentArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FulfillmentFeature>(guardedValue, (value) => FulfillmentFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      genericWebService: (() { final guardedValue = map['genericWebService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FulfillmentGenericWebService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
