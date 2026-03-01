// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_application_iam_policy_args_doc}
/// Arguments for getApplicationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_application_iam_policy_args_doc}
class GetApplicationIamPolicyArgs {
  final pulumi.Input<String> applicationId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetApplicationIamPolicyArgs].
  /// [applicationId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetApplicationIamPolicyArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetApplicationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationIamPolicyArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

