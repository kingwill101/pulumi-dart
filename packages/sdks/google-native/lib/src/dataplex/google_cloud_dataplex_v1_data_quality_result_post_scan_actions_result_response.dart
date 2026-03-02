// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_result_post_scan_actions_result_big_query_export_result_response.dart';

/// The result of post scan actions of DataQualityScan job.
class GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse {
  /// The result of BigQuery export post scan action.
  final pulumi.Input<GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse> bigqueryExportResult;

  /// Creates a new [GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse].
  /// [bigqueryExportResult] The result of BigQuery export post scan action.
  GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse({
    required this.bigqueryExportResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExportResult': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse, Map<String, dynamic>>(bigqueryExportResult, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse(
      bigqueryExportResult: (GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResultResponse.fromMap((map['bigqueryExportResult'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

