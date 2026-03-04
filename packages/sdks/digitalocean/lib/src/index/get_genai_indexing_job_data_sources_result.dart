// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_indexing_job_data_sources_indexed_data_source.dart';

/// Result data returned by getGenaiIndexingJobDataSources.
class GetGenaiIndexingJobDataSourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGenaiIndexingJobDataSourcesIndexedDataSource>
  indexedDataSources;
  final String indexingJobUuid;

  /// Creates a new [GetGenaiIndexingJobDataSourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexedDataSources] Required.
  /// [indexingJobUuid] Required.
  GetGenaiIndexingJobDataSourcesResult({
    required this.id,
    required this.indexedDataSources,
    required this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'indexedDataSources':
          pulumi.Input.encodeList<
            GetGenaiIndexingJobDataSourcesIndexedDataSource,
            Map<String, dynamic>
          >(indexedDataSources, (value) => value.toMap()),
      'indexingJobUuid': indexingJobUuid,
    };
  }

  factory GetGenaiIndexingJobDataSourcesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGenaiIndexingJobDataSourcesResult(
      id: map['id'] as String,
      indexedDataSources:
          pulumi.Input.decodeList<
            GetGenaiIndexingJobDataSourcesIndexedDataSource
          >(
            map['indexedDataSources']!,
            (value) => GetGenaiIndexingJobDataSourcesIndexedDataSource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      indexingJobUuid: map['indexingJobUuid'] as String,
    );
  }
}
