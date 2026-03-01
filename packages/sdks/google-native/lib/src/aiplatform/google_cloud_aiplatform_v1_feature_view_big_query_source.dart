// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudAiplatformV1FeatureViewBigQuerySource {
  /// Columns to construct entity_id / row keys. Start by supporting 1 only.
  final List<String> entityIdColumns;
  /// The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  final String uri;

  /// Creates a new [GoogleCloudAiplatformV1FeatureViewBigQuerySource].
  /// [entityIdColumns] Columns to construct entity_id / row keys. Start by supporting 1 only.
  /// [uri] The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  GoogleCloudAiplatformV1FeatureViewBigQuerySource({
    required this.entityIdColumns,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityIdColumns': entityIdColumns,
      'uri': uri,
    };
  }

  factory GoogleCloudAiplatformV1FeatureViewBigQuerySource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureViewBigQuerySource(
      entityIdColumns: (map['entityIdColumns'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}

