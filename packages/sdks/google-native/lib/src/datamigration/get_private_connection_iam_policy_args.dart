// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
/// Arguments for getPrivateConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_private_connection_iam_policy_args_doc}
class GetPrivateConnectionIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateConnectionIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  GetPrivateConnectionIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> privateConnectionId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
    };
  }

  factory GetPrivateConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      privateConnectionId: pulumi.Output.create<String>(map['privateConnectionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

