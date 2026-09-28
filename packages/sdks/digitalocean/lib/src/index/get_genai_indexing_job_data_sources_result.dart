// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_indexing_job_data_sources_indexed_data_source.dart';

/// Result data returned by getGenaiIndexingJobDataSources.
class GetGenaiIndexingJobDataSourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final List<GetGenaiIndexingJobDataSourcesIndexedDataSource>? indexedDataSources;
  final String? indexingJobUuid;

  /// Creates a new [GetGenaiIndexingJobDataSourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexedDataSources] Optional.
  /// [indexingJobUuid] Optional.
  const GetGenaiIndexingJobDataSourcesResult({
    this.id,
    this.indexedDataSources,
    this.indexingJobUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'indexedDataSources': ?(() { final guardedValue = indexedDataSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGenaiIndexingJobDataSourcesIndexedDataSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'indexingJobUuid': ?indexingJobUuid,
    };
  }

  factory GetGenaiIndexingJobDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiIndexingJobDataSourcesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexedDataSources: (() { final guardedValue = map['indexedDataSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGenaiIndexingJobDataSourcesIndexedDataSource>(guardedValue, (value) => GetGenaiIndexingJobDataSourcesIndexedDataSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      indexingJobUuid: (() { final guardedValue = map['indexingJobUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
