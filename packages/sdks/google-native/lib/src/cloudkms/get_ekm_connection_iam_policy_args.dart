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
    required this.ekmConnectionId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      ekmConnectionId: pulumi.Input.fromValue(map['ekmConnectionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
