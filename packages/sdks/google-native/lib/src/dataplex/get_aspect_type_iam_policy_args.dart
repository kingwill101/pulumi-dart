// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_aspect_type_iam_policy_args_doc}
/// Arguments for getAspectTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_aspect_type_iam_policy_args_doc}
class GetAspectTypeIamPolicyArgs {
  final pulumi.Input<String> aspectTypeId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAspectTypeIamPolicyArgs].
  /// [aspectTypeId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetAspectTypeIamPolicyArgs({
    required this.aspectTypeId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': aspectTypeId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetAspectTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAspectTypeIamPolicyArgs(
      aspectTypeId: pulumi.Input.fromValue(map['aspectTypeId'] as String),
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
