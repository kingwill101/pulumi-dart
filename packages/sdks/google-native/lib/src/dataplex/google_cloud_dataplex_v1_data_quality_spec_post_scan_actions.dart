// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions_big_query_export.dart';

/// The configuration of post scan actions of DataQualityScan.
class GoogleCloudDataplexV1DataQualitySpecPostScanActions {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final pulumi.Input<
    GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport
  >?
  bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpecPostScanActions].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  GoogleCloudDataplexV1DataQualitySpecPostScanActions({this.bigqueryExport});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport,
            Map<String, dynamic>
          >(bigqueryExport, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataQualitySpecPostScanActions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualitySpecPostScanActions(
      bigqueryExport: (() {
        final guardedValue = map['bigqueryExport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
