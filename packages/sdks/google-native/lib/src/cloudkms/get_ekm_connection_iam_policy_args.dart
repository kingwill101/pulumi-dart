// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_ekm_connection_iam_policy_args_doc}
/// Arguments for getEkmConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_ekm_connection_iam_policy_args_doc}
class GetEkmConnectionIamPolicyArgs {
  final pulumi.Input<String> ekmConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEkmConnectionIamPolicyArgs].
  /// [ekmConnectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEkmConnectionIamPolicyArgs({
    required pulumi.Output<String> ekmConnectionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      ekmConnectionId = pulumi.Input.asInput<String>(ekmConnectionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionId': ekmConnectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEkmConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionIamPolicyArgs(
      ekmConnectionId: pulumi.Output.create<String>(map['ekmConnectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

