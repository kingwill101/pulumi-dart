// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_mesh_iam_policy_networkservices_v1beta1_args_doc}
/// Arguments for getMeshIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_mesh_iam_policy_networkservices_v1beta1_args_doc}
class GetMeshIamPolicyNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> meshId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMeshIamPolicyNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [meshId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetMeshIamPolicyNetworkservicesV1beta1Args({
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

  factory GetMeshIamPolicyNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetMeshIamPolicyNetworkservicesV1beta1Args(
      location: (map['location'] as String).input(),
      meshId: (map['meshId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

