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
    required pulumi.Output<String> location,
    required pulumi.Output<String> namespaceId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> workloadId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project),
      workloadId = pulumi.Input.asInput<String>(workloadId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      workloadId: pulumi.Output.create<String>(map['workloadId'] as String),
    );
  }
}

