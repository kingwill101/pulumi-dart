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
  const GetNetConnectionIamPolicyArgs({
    required this.location,
    required this.netConnectionId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      location: pulumi.Input.fromValue(map['location'] as String),
      netConnectionId: pulumi.Input.fromValue(map['netConnectionId'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
