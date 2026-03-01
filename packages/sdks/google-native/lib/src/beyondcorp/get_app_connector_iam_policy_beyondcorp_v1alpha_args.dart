// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_connector_iam_policy_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppConnectorIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_connector_iam_policy_beyondcorp_v1alpha_args_doc}
class GetAppConnectorIamPolicyBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectorIamPolicyBeyondcorpV1alphaArgs].
  /// [appConnectorId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAppConnectorIamPolicyBeyondcorpV1alphaArgs({
    required pulumi.Output<String> appConnectorId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      appConnectorId = pulumi.Input.asInput<String>(appConnectorId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectorId': appConnectorId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAppConnectorIamPolicyBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorIamPolicyBeyondcorpV1alphaArgs(
      appConnectorId: pulumi.Output.create<String>(map['appConnectorId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

