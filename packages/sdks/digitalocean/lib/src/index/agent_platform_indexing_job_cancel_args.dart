// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_agent_platform_indexing_job_cancel_agent_platform_indexing_job_cancel_args_doc}
/// The set of arguments for AgentPlatformIndexingJobCancel.
/// {@endtemplate}
/// {@macro pulumi_index_agent_platform_indexing_job_cancel_agent_platform_indexing_job_cancel_args_doc}
class AgentPlatformIndexingJobCancelArgs {
  /// The UUID of the indexing job to cancel.
  final pulumi.Input<String> uuid;

  /// Creates a new [AgentPlatformIndexingJobCancelArgs].
  /// [uuid] The UUID of the indexing job to cancel.
  const AgentPlatformIndexingJobCancelArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory AgentPlatformIndexingJobCancelArgs.fromMap(Map<String, dynamic> map) {
    return AgentPlatformIndexingJobCancelArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
