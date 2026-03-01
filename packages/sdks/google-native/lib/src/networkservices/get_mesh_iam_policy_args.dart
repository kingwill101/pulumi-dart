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
    required pulumi.Output<String> location,
    required pulumi.Output<String> meshId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      meshId = pulumi.Input.asInput<String>(meshId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      meshId: pulumi.Output.create<String>(map['meshId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

