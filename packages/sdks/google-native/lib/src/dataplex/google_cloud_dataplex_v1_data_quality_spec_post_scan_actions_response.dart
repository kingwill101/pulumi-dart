// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions_big_query_export_response.dart';

/// The configuration of post scan actions of DataQualityScan.
class GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final pulumi.Input<GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse> bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse({
    required this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse, Map<String, dynamic>>(bigqueryExport, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse(
      bigqueryExport: pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExportResponse.fromMap((map['bigqueryExport']! as Map).cast<String, dynamic>())),
    );
  }
}

