// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_spec_post_scan_actions.dart';
import 'google_cloud_dataplex_v1_data_profile_spec_selected_fields.dart';

/// DataProfileScan related setting.
class GoogleCloudDataplexV1DataProfileSpec {
  /// Optional. The fields to exclude from data profile.If specified, the fields will be excluded from data profile, regardless of include_fields value.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecSelectedFields>? excludeFields;
  /// Optional. The fields to include in data profile.If not specified, all fields at the time of profile scan job execution are included, except for ones listed in exclude_fields.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecSelectedFields>? includeFields;
  /// Optional. Actions to take upon job completion..
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpecPostScanActions>? postScanActions;
  /// Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final pulumi.Input<String>? rowFilter;
  /// Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  final pulumi.Input<double>? samplingPercent;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpec].
  /// [excludeFields] Optional. The fields to exclude from data profile.If specified, the fields will be excluded from data profile, regardless of include_fields value.
  /// [includeFields] Optional. The fields to include in data profile.If not specified, all fields at the time of profile scan job execution are included, except for ones listed in exclude_fields.
  /// [postScanActions] Optional. Actions to take upon job completion..
  /// [rowFilter] Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  /// [samplingPercent] Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  GoogleCloudDataplexV1DataProfileSpec({
    this.excludeFields,
    this.includeFields,
    this.postScanActions,
    this.rowFilter,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFields': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataProfileSpecSelectedFields, Map<String, dynamic>>(excludeFields, (value) => value.toMap()),
      'includeFields': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataProfileSpecSelectedFields, Map<String, dynamic>>(includeFields, (value) => value.toMap()),
      'postScanActions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataProfileSpecPostScanActions, Map<String, dynamic>>(postScanActions, (value) => value.toMap()),
      'rowFilter': ?rowFilter,
      'samplingPercent': ?samplingPercent,
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpec(
      excludeFields: map['excludeFields'] == null ? null : (GoogleCloudDataplexV1DataProfileSpecSelectedFields.fromMap((map['excludeFields']! as Map).cast<String, dynamic>())).input(),
      includeFields: map['includeFields'] == null ? null : (GoogleCloudDataplexV1DataProfileSpecSelectedFields.fromMap((map['includeFields']! as Map).cast<String, dynamic>())).input(),
      postScanActions: map['postScanActions'] == null ? null : (GoogleCloudDataplexV1DataProfileSpecPostScanActions.fromMap((map['postScanActions']! as Map).cast<String, dynamic>())).input(),
      rowFilter: map['rowFilter'] == null ? null : (map['rowFilter']! as String).input(),
      samplingPercent: map['samplingPercent'] == null ? null : (map['samplingPercent']! as double).input(),
    );
  }
}

