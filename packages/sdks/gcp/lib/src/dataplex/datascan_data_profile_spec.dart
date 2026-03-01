// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_profile_spec_exclude_fields.dart';
import 'datascan_data_profile_spec_include_fields.dart';
import 'datascan_data_profile_spec_post_scan_actions.dart';

class DatascanDataProfileSpec {
  /// If set, the latest DataScan job result will be published to Dataplex Catalog.
  final bool? catalogPublishingEnabled;
  /// The fields to exclude from data profile.
  /// If specified, the fields will be excluded from data profile, regardless of `include_fields` value.
  /// Structure is documented below.
  final DatascanDataProfileSpecExcludeFields? excludeFields;
  /// The fields to include in data profile.
  /// If not specified, all fields at the time of profile scan job execution are included, except for ones listed in `exclude_fields`.
  /// Structure is documented below.
  final DatascanDataProfileSpecIncludeFields? includeFields;
  /// Actions to take upon job completion.
  /// Structure is documented below.
  final DatascanDataProfileSpecPostScanActions? postScanActions;
  /// A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final String? rowFilter;
  /// The percentage of the records to be selected from the dataset for DataScan.
  /// Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
  /// Sampling is not applied if `sampling_percent` is not specified, 0 or 100.
  final double? samplingPercent;

  /// Creates a new [DatascanDataProfileSpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Dataplex Catalog.
  /// [excludeFields] The fields to exclude from data profile.
  /// [includeFields] The fields to include in data profile.
  /// [postScanActions] Actions to take upon job completion.
  /// [rowFilter] A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  /// [samplingPercent] The percentage of the records to be selected from the dataset for DataScan.
  DatascanDataProfileSpec({
    this.catalogPublishingEnabled,
    this.excludeFields,
    this.includeFields,
    this.postScanActions,
    this.rowFilter,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogPublishingEnabled': ?catalogPublishingEnabled,
      'excludeFields': ?excludeFields == null ? null : excludeFields!.toMap(),
      'includeFields': ?includeFields == null ? null : includeFields!.toMap(),
      'postScanActions': ?postScanActions == null ? null : postScanActions!.toMap(),
      'rowFilter': ?rowFilter,
      'samplingPercent': ?samplingPercent,
    };
  }

  factory DatascanDataProfileSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpec(
      catalogPublishingEnabled: map['catalogPublishingEnabled'] == null ? null : map['catalogPublishingEnabled'] as bool,
      excludeFields: map['excludeFields'] == null ? null : DatascanDataProfileSpecExcludeFields.fromMap((map['excludeFields'] as Map).cast<String, dynamic>()),
      includeFields: map['includeFields'] == null ? null : DatascanDataProfileSpecIncludeFields.fromMap((map['includeFields'] as Map).cast<String, dynamic>()),
      postScanActions: map['postScanActions'] == null ? null : DatascanDataProfileSpecPostScanActions.fromMap((map['postScanActions'] as Map).cast<String, dynamic>()),
      rowFilter: map['rowFilter'] == null ? null : map['rowFilter'] as String,
      samplingPercent: map['samplingPercent'] == null ? null : map['samplingPercent'] as double,
    );
  }
}

