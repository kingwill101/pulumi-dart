// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The BigQuery location for the input content.
class GoogleCloudAiplatformV1BigQuerySource {
  /// BigQuery URI to a table, up to 2000 characters long. Accepted forms: * BigQuery path. For example: `bq://projectId.bqDatasetId.bqTableId`.
  final pulumi.Input<String> inputUri;

  /// Creates a new [GoogleCloudAiplatformV1BigQuerySource].
  /// [inputUri] BigQuery URI to a table, up to 2000 characters long. Accepted forms: * BigQuery path. For example: `bq://projectId.bqDatasetId.bqTableId`.
  GoogleCloudAiplatformV1BigQuerySource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
    };
  }

  factory GoogleCloudAiplatformV1BigQuerySource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1BigQuerySource(
      inputUri: (map['inputUri'] as String).input(),
    );
  }
}

