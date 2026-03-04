// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse {
  /// Columns to construct entity_id / row keys. Start by supporting 1 only.
  final pulumi.Input<List<String>> entityIdColumns;

  /// The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse].
  /// [entityIdColumns] Columns to construct entity_id / row keys. Start by supporting 1 only.
  /// [uri] The BigQuery view URI that will be materialized on each sync trigger based on FeatureView.SyncConfig.
  GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse({
    required this.entityIdColumns,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entityIdColumns': entityIdColumns, 'uri': uri};
  }

  factory GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1FeatureViewBigQuerySourceResponse(
      entityIdColumns: pulumi.Input.fromValue(
        (map['entityIdColumns'] as List).cast<String>(),
      ),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
