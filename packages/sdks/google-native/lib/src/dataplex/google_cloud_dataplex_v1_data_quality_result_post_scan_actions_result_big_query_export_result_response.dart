// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The result of BigQuery export post scan action.
class GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse {
  /// Additional information about the BigQuery exporting.
  final pulumi.Input<String> message;
  /// Execution state for the BigQuery exporting.
  final pulumi.Input<String> state;

  /// Creates a new [GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse].
  /// [message] Additional information about the BigQuery exporting.
  /// [state] Execution state for the BigQuery exporting.
  GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse({
    required this.message,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'state': state,
    };
  }

  factory GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse(
      message: (map['message'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

