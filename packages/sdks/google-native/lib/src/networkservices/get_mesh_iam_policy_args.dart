// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_mesh_iam_policy_args_doc}
/// Arguments for getMeshIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_mesh_iam_policy_args_doc}
class GetMeshIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshIamPolicyArgs].
  /// [location] Required.
  /// [meshId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMeshIamPolicyArgs({
    required this.location,
    required this.meshId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'meshId': meshId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetMeshIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshIamPolicyArgs(
      location: (map['location'] as String).input(),
      meshId: (map['meshId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

