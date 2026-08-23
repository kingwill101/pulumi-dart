// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_spec_post_scan_actions_response.dart';
import 'google_cloud_dataplex_v1_data_profile_spec_selected_fields_response.dart';

/// DataProfileScan related setting.
class GoogleCloudDataplexV1DataProfileSpecResponse {
  /// Optional. The fields to exclude from data profile.If specified, the fields will be excluded from data profile, regardless of include_fields value.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse> excludeFields;
  /// Optional. The fields to include in data profile.If not specified, all fields at the time of profile scan job execution are included, except for ones listed in exclude_fields.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse> includeFields;
  /// Optional. Actions to take upon job completion..
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse> postScanActions;
  /// Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  final pulumi.Input<String> rowFilter;
  /// Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  final pulumi.Input<double> samplingPercent;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecResponse].
  /// [excludeFields] Optional. The fields to exclude from data profile.If specified, the fields will be excluded from data profile, regardless of include_fields value.
  /// [includeFields] Optional. The fields to include in data profile.If not specified, all fields at the time of profile scan job execution are included, except for ones listed in exclude_fields.
  /// [postScanActions] Optional. Actions to take upon job completion..
  /// [rowFilter] Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  /// [samplingPercent] Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  const GoogleCloudDataplexV1DataProfileSpecResponse({
    required this.excludeFields,
    required this.includeFields,
    required this.postScanActions,
    required this.rowFilter,
    required this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFields': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse, Map<String, dynamic>>(excludeFields, (value) => value.toMap()),
      'includeFields': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse, Map<String, dynamic>>(includeFields, (value) => value.toMap()),
      'postScanActions': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse, Map<String, dynamic>>(postScanActions, (value) => value.toMap()),
      'rowFilter': rowFilter,
      'samplingPercent': samplingPercent,
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecResponse(
      excludeFields: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse.fromMap((map['excludeFields']! as Map).cast<String, dynamic>())),
      includeFields: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse.fromMap((map['includeFields']! as Map).cast<String, dynamic>())),
      postScanActions: pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileSpecPostScanActionsResponse.fromMap((map['postScanActions']! as Map).cast<String, dynamic>())),
      rowFilter: pulumi.Input.fromValue(map['rowFilter'] as String),
      samplingPercent: pulumi.Input.fromValue(map['samplingPercent'] as double),
    );
  }
}
