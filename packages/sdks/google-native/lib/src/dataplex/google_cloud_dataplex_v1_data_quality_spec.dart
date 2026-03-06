// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_rule.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions.dart';

/// DataQualityScan related setting.
class GoogleCloudDataplexV1DataQualitySpec {
  /// Optional. Actions to take upon job completion.
  final pulumi.Input<GoogleCloudDataplexV1DataQualitySpecPostScanActions>? postScanActions;
  /// Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  final pulumi.Input<String>? rowFilter;
  /// The list of rules to evaluate against a data source. At least one rule is required.
  final pulumi.Input<List<GoogleCloudDataplexV1DataQualityRule>> rules;
  /// Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  final pulumi.Input<double>? samplingPercent;

  /// Creates a new [GoogleCloudDataplexV1DataQualitySpec].
  /// [postScanActions] Optional. Actions to take upon job completion.
  /// [rowFilter] Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 &gt;= 0 AND col2 &lt; 10
  /// [rules] The list of rules to evaluate against a data source. At least one rule is required.
  /// [samplingPercent] Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  const GoogleCloudDataplexV1DataQualitySpec({
    this.postScanActions,
    this.rowFilter,
    required this.rules,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postScanActions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualitySpecPostScanActions, Map<String, dynamic>>(postScanActions, (value) => value.toMap()),
      'rowFilter': ?rowFilter,
      'rules': pulumi.Input.mapInputValue<List<GoogleCloudDataplexV1DataQualityRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GoogleCloudDataplexV1DataQualityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'samplingPercent': ?samplingPercent,
    };
  }

  factory GoogleCloudDataplexV1DataQualitySpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpec(
      postScanActions: (() { final guardedValue = map['postScanActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualitySpecPostScanActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rowFilter: (() { final guardedValue = map['rowFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDataplexV1DataQualityRule>(map['rules']!, (value) => GoogleCloudDataplexV1DataQualityRule.fromMap((value as Map).cast<String, dynamic>()))),
      samplingPercent: (() { final guardedValue = map['samplingPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

