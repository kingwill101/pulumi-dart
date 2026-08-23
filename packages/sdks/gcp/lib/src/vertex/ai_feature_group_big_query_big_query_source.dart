// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureGroupBigQueryBigQuerySource {
  /// BigQuery URI to a table, up to 2000 characters long. For example: `bq://projectId.bqDatasetId.bqTableId.`
  final pulumi.Input<String> inputUri;

  /// Creates a new [AiFeatureGroupBigQueryBigQuerySource].
  /// [inputUri] BigQuery URI to a table, up to 2000 characters long. For example: `bq://projectId.bqDatasetId.bqTableId.`
  const AiFeatureGroupBigQueryBigQuerySource({
    required this.inputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputUri': inputUri,
    };
  }

  factory AiFeatureGroupBigQueryBigQuerySource.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupBigQueryBigQuerySource(
      inputUri: pulumi.Input.fromValue(map['inputUri'] as String),
    );
  }
}
