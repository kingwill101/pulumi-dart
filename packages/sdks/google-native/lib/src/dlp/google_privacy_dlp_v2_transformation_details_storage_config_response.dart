// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_response.dart';

/// Config for storing transformation details.
class GooglePrivacyDlpV2TransformationDetailsStorageConfigResponse {
  /// The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_transformation_details_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> table;

  /// Creates a new [GooglePrivacyDlpV2TransformationDetailsStorageConfigResponse].
  /// [table] The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_transformation_details_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details.
  const GooglePrivacyDlpV2TransformationDetailsStorageConfigResponse({
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'table': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2TransformationDetailsStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationDetailsStorageConfigResponse(
      table: pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['table']! as Map).cast<String, dynamic>())),
    );
  }
}

