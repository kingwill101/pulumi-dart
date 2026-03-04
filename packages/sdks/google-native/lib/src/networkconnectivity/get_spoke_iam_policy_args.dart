// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_spoke_iam_policy_args_doc}
/// Arguments for getSpokeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_spoke_iam_policy_args_doc}
class GetSpokeIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> spokeId;

  /// Creates a new [GetSpokeIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [spokeId] Required.
  GetSpokeIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'spokeId': spokeId,
    };
  }

  factory GetSpokeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSpokeIamPolicyArgs(
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
      spokeId: pulumi.Input.fromValue(map['spokeId'] as String),
    );
  }
}
