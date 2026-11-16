// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_agent_platform_indexing_job_data_sources_get_agent_platform_indexing_job_data_sources_args_doc}
/// Arguments for getAgentPlatformIndexingJobDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_indexing_job_data_sources_get_agent_platform_indexing_job_data_sources_args_doc}
class GetAgentPlatformIndexingJobDataSourcesArgs {
  final pulumi.Input<String> indexingJobUuid;

  /// Creates a new [GetAgentPlatformIndexingJobDataSourcesArgs].
  /// [indexingJobUuid] Required.
  const GetAgentPlatformIndexingJobDataSourcesArgs({
    required this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexingJobUuid': indexingJobUuid,
    };
  }

  factory GetAgentPlatformIndexingJobDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformIndexingJobDataSourcesArgs(
      indexingJobUuid: pulumi.Input.fromValue(map['indexingJobUuid'] as String),
    );
  }
}
