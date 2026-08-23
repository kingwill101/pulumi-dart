// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_quality_spec_post_scan_actions.dart';
import 'datascan_data_quality_spec_rule.dart';

class DatascanDataQualitySpec {
  /// If set, the latest DataScan job result will be published to Dataplex Catalog.
  final pulumi.Input<bool>? catalogPublishingEnabled;
  /// If set to true, the scan will retrieve rules defined in Data Catalog for the resource.
  final pulumi.Input<bool>? enableCatalogBasedRules;
  /// A filter to selectively run a subset of rules.
  final pulumi.Input<String>? filter;
  /// Actions to take upon job completion.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpecPostScanActions>? postScanActions;
  /// A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  final pulumi.Input<String>? rowFilter;
  /// The list of rules to evaluate against a data source. At least one rule is required.
  /// Structure is documented below.
  final pulumi.Input<List<DatascanDataQualitySpecRule>>? rules;
  /// The percentage of the records to be selected from the dataset for DataScan.
  /// Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
  /// Sampling is not applied if `samplingPercent` is not specified, 0 or 100.
  final pulumi.Input<double>? samplingPercent;

  /// Creates a new [DatascanDataQualitySpec].
  /// [catalogPublishingEnabled] If set, the latest DataScan job result will be published to Dataplex Catalog.
  /// [enableCatalogBasedRules] If set to true, the scan will retrieve rules defined in Data Catalog for the resource.
  /// [filter] A filter to selectively run a subset of rules.
  /// [postScanActions] Actions to take upon job completion.
  /// [rowFilter] A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  /// [rules] The list of rules to evaluate against a data source. At least one rule is required.
  /// [samplingPercent] The percentage of the records to be selected from the dataset for DataScan.
  const DatascanDataQualitySpec({
    this.catalogPublishingEnabled,
    this.enableCatalogBasedRules,
    this.filter,
    this.postScanActions,
    this.rowFilter,
    this.rules,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogPublishingEnabled': ?catalogPublishingEnabled,
      'enableCatalogBasedRules': ?enableCatalogBasedRules,
      'filter': ?filter,
      'postScanActions': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpecPostScanActions, Map<String, dynamic>>(postScanActions, (value) => value.toMap()),
      'rowFilter': ?rowFilter,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DatascanDataQualitySpecRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DatascanDataQualitySpecRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'samplingPercent': ?samplingPercent,
    };
  }

  factory DatascanDataQualitySpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpec(
      catalogPublishingEnabled: (() { final guardedValue = map['catalogPublishingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCatalogBasedRules: (() { final guardedValue = map['enableCatalogBasedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postScanActions: (() { final guardedValue = map['postScanActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpecPostScanActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowFilter: (() { final guardedValue = map['rowFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatascanDataQualitySpecRule>(guardedValue, (value) => DatascanDataQualitySpecRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      samplingPercent: (() { final guardedValue = map['samplingPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
