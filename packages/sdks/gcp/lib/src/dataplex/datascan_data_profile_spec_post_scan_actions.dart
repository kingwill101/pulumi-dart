// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_profile_spec_post_scan_actions_bigquery_export.dart';

class DatascanDataProfileSpecPostScanActions {
  /// If set, results will be exported to the provided BigQuery table.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpecPostScanActionsBigqueryExport>? bigqueryExport;

  /// Creates a new [DatascanDataProfileSpecPostScanActions].
  /// [bigqueryExport] If set, results will be exported to the provided BigQuery table.
  DatascanDataProfileSpecPostScanActions({
    this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryExport': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpecPostScanActionsBigqueryExport, Map<String, dynamic>>(bigqueryExport, (value) => value.toMap()),
    };
  }

  factory DatascanDataProfileSpecPostScanActions.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null ? null : (DatascanDataProfileSpecPostScanActionsBigqueryExport.fromMap((map['bigqueryExport'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

