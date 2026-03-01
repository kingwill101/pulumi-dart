// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_net_connection_iam_policy_args_doc}
/// Arguments for getNetConnectionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_net_connection_iam_policy_args_doc}
class GetNetConnectionIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> netConnectionId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetConnectionIamPolicyArgs].
  /// [location] Required.
  /// [netConnectionId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetNetConnectionIamPolicyArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> netConnectionId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      netConnectionId = pulumi.Input.asInput<String>(netConnectionId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'netConnectionId': netConnectionId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetNetConnectionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetConnectionIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      netConnectionId: pulumi.Output.create<String>(map['netConnectionId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

