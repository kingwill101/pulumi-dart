// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_profile_spec_exclude_fields.dart';
import 'datascan_data_profile_spec_include_fields.dart';
import 'datascan_data_profile_spec_post_scan_actions.dart';

class DatascanDataProfileSpec {
  /// If set, the latest DataScan job result will be published to Dataplex Catalog.
  final pulumi.Input<bool>? catalogPublishingEnabled;
  /// The fields to exclude from data profile.
  /// If specified, the fields will be excluded from data profile, regardless of `include_fields` value.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpecExcludeFields>? excludeFields;
  /// The fields to include in data profile.
  /// If not specified, all fields at the time of profile scan job execution are included, except for ones listed in `exclude_fields`.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpecIncludeFields>? includeFields;
  /// Actions to take upon job completion.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpecPostScanActions>? postScanActions;
  /// A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  final pulumi.Input<String>? rowFilter;
  /// The percentage of the records to be selected from the dataset for DataScan.
  /// Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
  /// Sampling is not applied if `sampling_percent` is not specified, 0 or 100.
  final pulumi.Input<double>? samplingPercent;

  /// Creates a new [DatascanDataProfileSpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Dataplex Catalog.
  /// [excludeFields] The fields to exclude from data profile.
  /// [includeFields] The fields to include in data profile.
  /// [postScanActions] Actions to take upon job completion.
  /// [rowFilter] A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
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
      'excludeFields': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpecExcludeFields, Map<String, dynamic>>(excludeFields, (value) => value.toMap()),
      'includeFields': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpecIncludeFields, Map<String, dynamic>>(includeFields, (value) => value.toMap()),
      'postScanActions': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpecPostScanActions, Map<String, dynamic>>(postScanActions, (value) => value.toMap()),
      'rowFilter': ?rowFilter,
      'samplingPercent': ?samplingPercent,
    };
  }

  factory DatascanDataProfileSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpec(
      catalogPublishingEnabled: (() { final guardedValue = map['catalogPublishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeFields: (() { final guardedValue = map['excludeFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataProfileSpecExcludeFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeFields: (() { final guardedValue = map['includeFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataProfileSpecIncludeFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postScanActions: (() { final guardedValue = map['postScanActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataProfileSpecPostScanActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowFilter: (() { final guardedValue = map['rowFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplingPercent: (() { final guardedValue = map['samplingPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

