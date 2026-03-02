// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table.dart';

/// Config for storing transformation details.
class GooglePrivacyDlpV2TransformationDetailsStorageConfig {
  /// The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_transformation_details_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTable>? table;

  /// Creates a new [GooglePrivacyDlpV2TransformationDetailsStorageConfig].
  /// [table] The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_transformation_details_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details.
  GooglePrivacyDlpV2TransformationDetailsStorageConfig({
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'table': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryTable, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2TransformationDetailsStorageConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationDetailsStorageConfig(
      table: map['table'] == null ? null : (GooglePrivacyDlpV2BigQueryTable.fromMap((map['table'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

