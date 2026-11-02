// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_indexing_job_get_agent_platform_indexing_job_args_doc}
/// Arguments for getAgentPlatformIndexingJob.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_indexing_job_get_agent_platform_indexing_job_args_doc}
class GetAgentPlatformIndexingJobArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetAgentPlatformIndexingJobArgs].
  /// [uuid] Required.
  const GetAgentPlatformIndexingJobArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetAgentPlatformIndexingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformIndexingJobArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
