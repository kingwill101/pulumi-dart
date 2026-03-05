// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_indexing_job_data_sources_indexed_data_source.dart';

/// Result data returned by getGradientaiIndexingJobDataSources.
class GetGradientaiIndexingJobDataSourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiIndexingJobDataSourcesIndexedDataSource> indexedDataSources;
  final String indexingJobUuid;

  /// Creates a new [GetGradientaiIndexingJobDataSourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexedDataSources] Required.
  /// [indexingJobUuid] Required.
  GetGradientaiIndexingJobDataSourcesResult({
    required this.id,
    required this.indexedDataSources,
    required this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'indexedDataSources': pulumi.Input.encodeList<GetGradientaiIndexingJobDataSourcesIndexedDataSource, Map<String, dynamic>>(indexedDataSources, (value) => value.toMap()),
      'indexingJobUuid': indexingJobUuid,
    };
  }

  factory GetGradientaiIndexingJobDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiIndexingJobDataSourcesResult(
      id: map['id'] as String,
      indexedDataSources: pulumi.Input.decodeList<GetGradientaiIndexingJobDataSourcesIndexedDataSource>(map['indexedDataSources']!, (value) => GetGradientaiIndexingJobDataSourcesIndexedDataSource.fromMap((value as Map).cast<String, dynamic>())),
      indexingJobUuid: map['indexingJobUuid'] as String,
    );
  }
}

