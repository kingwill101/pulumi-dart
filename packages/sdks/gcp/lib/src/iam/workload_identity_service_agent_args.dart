// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workload_identity_service_agent_workload_identity_service_agent_args_doc}
/// The set of arguments for WorkloadIdentityServiceAgent.
/// {@endtemplate}
/// {@macro pulumi_iam_workload_identity_service_agent_workload_identity_service_agent_args_doc}
class WorkloadIdentityServiceAgentArgs {
  /// The parent resource path.
  final pulumi.Input<String> parent;

  /// Creates a new [WorkloadIdentityServiceAgentArgs].
  /// [parent] The parent resource path.
  const WorkloadIdentityServiceAgentArgs({
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parent': parent,
    };
  }

  factory WorkloadIdentityServiceAgentArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityServiceAgentArgs(
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
