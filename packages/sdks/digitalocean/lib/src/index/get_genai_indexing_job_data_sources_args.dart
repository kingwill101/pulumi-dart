// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_indexing_job_data_sources_get_genai_indexing_job_data_sources_args_doc}
/// Arguments for getGenaiIndexingJobDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_indexing_job_data_sources_get_genai_indexing_job_data_sources_args_doc}
class GetGenaiIndexingJobDataSourcesArgs {
  final pulumi.Input<String> indexingJobUuid;

  /// Creates a new [GetGenaiIndexingJobDataSourcesArgs].
  /// [indexingJobUuid] Required.
  const GetGenaiIndexingJobDataSourcesArgs({
    required this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexingJobUuid': indexingJobUuid,
    };
  }

  factory GetGenaiIndexingJobDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiIndexingJobDataSourcesArgs(
      indexingJobUuid: pulumi.Input.fromValue(map['indexingJobUuid'] as String),
    );
  }
}
