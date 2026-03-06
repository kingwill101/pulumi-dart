// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_spec_post_scan_actions_big_query_export.dart';

/// The configuration of post scan actions of DataProfileScan job.
class GoogleCloudDataplexV1DataProfileSpecPostScanActions {
  /// Optional. If set, results will be exported to the provided BigQuery table.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport>? bigqueryExport;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecPostScanActions].
  /// [bigqueryExport] Optional. If set, results will be exported to the provided BigQuery table.
  const GoogleCloudDataplexV1DataProfileSpecPostScanActions({
    this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport, Map<String, dynamic>>(bigqueryExport, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpecPostScanActions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecPostScanActions(
      bigqueryExport: (() { final guardedValue = map['bigqueryExport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

