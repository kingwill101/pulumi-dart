// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_result_post_scan_actions_result_big_query_export_result_response.dart';

/// The result of post scan actions of DataProfileScan job.
class GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse {
  /// The result of BigQuery export post scan action.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse> bigqueryExportResult;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse].
  /// [bigqueryExportResult] The result of BigQuery export post scan action.
  GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse({
    required this.bigqueryExportResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExportResult': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse, Map<String, dynamic>>(bigqueryExportResult, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse(
      bigqueryExportResult: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResultResponse.fromMap((map['bigqueryExportResult']! as Map).cast<String, dynamic>())),
    );
  }
}

