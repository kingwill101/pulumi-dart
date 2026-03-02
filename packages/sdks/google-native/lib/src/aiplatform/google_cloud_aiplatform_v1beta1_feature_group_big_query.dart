// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_big_query_source.dart';

/// Input source type for BigQuery Tables and Views.
class GoogleCloudAiplatformV1beta1FeatureGroupBigQuery {
  /// Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BigQuerySource> bigQuerySource;
  /// Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  final pulumi.Input<List<String>>? entityIdColumns;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureGroupBigQuery].
  /// [bigQuerySource] Immutable. The BigQuery source URI that points to either a BigQuery Table or View.
  /// [entityIdColumns] Optional. Columns to construct entity_id / row keys. Currently only supports 1 entity_id_column. If not provided defaults to `entity_id`.
  GoogleCloudAiplatformV1beta1FeatureGroupBigQuery({
    required this.bigQuerySource,
    this.entityIdColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuerySource': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1BigQuerySource, Map<String, dynamic>>(bigQuerySource, (value) => value.toMap()),
      'entityIdColumns': ?entityIdColumns,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureGroupBigQuery.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureGroupBigQuery(
      bigQuerySource: (GoogleCloudAiplatformV1beta1BigQuerySource.fromMap((map['bigQuerySource'] as Map).cast<String, dynamic>())).input(),
      entityIdColumns: map['entityIdColumns'] == null ? null : ((map['entityIdColumns'] as List).cast<String>()).input(),
    );
  }
}

