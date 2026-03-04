// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The result of BigQuery export post scan action.
class GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse {
  /// Additional information about the BigQuery exporting.
  final pulumi.Input<String> message;

  /// Execution state for the BigQuery exporting.
  final pulumi.Input<String> state;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse].
  /// [message] Additional information about the BigQuery exporting.
  /// [state] Execution state for the BigQuery exporting.
  GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse({
    required this.message,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': message, 'state': state};
  }

  factory GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
