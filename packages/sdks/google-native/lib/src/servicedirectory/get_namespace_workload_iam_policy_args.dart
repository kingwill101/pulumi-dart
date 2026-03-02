// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_namespace_workload_iam_policy_args_doc}
/// Arguments for getNamespaceWorkloadIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_namespace_workload_iam_policy_args_doc}
class GetNamespaceWorkloadIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workloadId;

  /// Creates a new [GetNamespaceWorkloadIamPolicyArgs].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [workloadId] Required.
  GetNamespaceWorkloadIamPolicyArgs({
    required this.location,
    required this.namespaceId,
    this.project,
    required this.workloadId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'workloadId': workloadId,
    };
  }

  factory GetNamespaceWorkloadIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceWorkloadIamPolicyArgs(
      location: (map['location'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workloadId: (map['workloadId'] as String).input(),
    );
  }
}

