// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v2_get_connection_iam_policy_args_doc}
/// Arguments for getConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v2_get_connection_iam_policy_args_doc}
class GetConnectionIamPolicyArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectionIamPolicyArgs].
  /// [connectionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectionIamPolicyArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionIamPolicyArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

