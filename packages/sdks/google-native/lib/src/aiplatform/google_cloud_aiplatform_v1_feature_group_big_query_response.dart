// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_big_query_source_response.dart';

/// Input source type for BigQuery Tables and Views.
class GoogleCloudAiplatformV1FeatureGroupBigQueryResponse {
  /// Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  final pulumi.Input<GoogleCloudAiplatformV1BigQuerySourceResponse> bigQuerySource;
  /// Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  final pulumi.Input<List<String>> entityIdColumns;

  /// Creates a new [GoogleCloudAiplatformV1FeatureGroupBigQueryResponse].
  /// [bigQuerySource] Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  GoogleCloudAiplatformV1FeatureGroupBigQueryResponse({
    required this.bigQuerySource,
    required this.entityIdColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1BigQuerySourceResponse, Map<String, dynamic>>(bigQuerySource, (value) => value.toMap()),
      'entityIdColumns': entityIdColumns,
    };
  }

  factory GoogleCloudAiplatformV1FeatureGroupBigQueryResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureGroupBigQueryResponse(
      bigQuerySource: (GoogleCloudAiplatformV1BigQuerySourceResponse.fromMap((map['bigQuerySource'] as Map).cast<String, dynamic>())).input(),
      entityIdColumns: ((map['entityIdColumns'] as List).cast<String>()).input(),
    );
  }
}

