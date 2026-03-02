// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_indexing_job_data_sources_get_gradientai_indexing_job_data_sources_args_doc}
/// Arguments for getGradientaiIndexingJobDataSources.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_indexing_job_data_sources_get_gradientai_indexing_job_data_sources_args_doc}
class GetGradientaiIndexingJobDataSourcesArgs {
  final pulumi.Input<String> indexingJobUuid;

  /// Creates a new [GetGradientaiIndexingJobDataSourcesArgs].
  /// [indexingJobUuid] Required.
  GetGradientaiIndexingJobDataSourcesArgs({
    required this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexingJobUuid': indexingJobUuid,
    };
  }

  factory GetGradientaiIndexingJobDataSourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiIndexingJobDataSourcesArgs(
      indexingJobUuid: (map['indexingJobUuid'] as String).input(),
    );
  }
}

