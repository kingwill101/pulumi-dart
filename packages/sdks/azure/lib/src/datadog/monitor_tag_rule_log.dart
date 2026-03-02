// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_tag_rule_log_filter.dart';

class MonitorTagRuleLog {
  /// Whether AAD logs should be sent for the Monitor resource?
  final pulumi.Input<bool>? aadLogEnabled;
  /// A `filter` block as defined below.
  ///
  /// > **Note:** List of filtering tags to be used for capturing logs. This only takes effect if `resource_log_enabled` flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<MonitorTagRuleLogFilter>>? filters;
  /// Whether Azure resource logs should be sent for the Monitor resource?
  final pulumi.Input<bool>? resourceLogEnabled;
  /// Whether Azure subscription logs should be sent for the Monitor resource?
  final pulumi.Input<bool>? subscriptionLogEnabled;

  /// Creates a new [MonitorTagRuleLog].
  /// [aadLogEnabled] Whether AAD logs should be sent for the Monitor resource?
  /// [filters] A `filter` block as defined below.
  /// [resourceLogEnabled] Whether Azure resource logs should be sent for the Monitor resource?
  /// [subscriptionLogEnabled] Whether Azure subscription logs should be sent for the Monitor resource?
  MonitorTagRuleLog({
    this.aadLogEnabled,
    this.filters,
    this.resourceLogEnabled,
    this.subscriptionLogEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadLogEnabled': ?aadLogEnabled,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<MonitorTagRuleLogFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<MonitorTagRuleLogFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceLogEnabled': ?resourceLogEnabled,
      'subscriptionLogEnabled': ?subscriptionLogEnabled,
    };
  }

  factory MonitorTagRuleLog.fromMap(Map<String, dynamic> map) {
    return MonitorTagRuleLog(
      aadLogEnabled: map['aadLogEnabled'] == null ? null : (map['aadLogEnabled'] as bool).input(),
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<MonitorTagRuleLogFilter>(map['filters'], (value) => MonitorTagRuleLogFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceLogEnabled: map['resourceLogEnabled'] == null ? null : (map['resourceLogEnabled'] as bool).input(),
      subscriptionLogEnabled: map['subscriptionLogEnabled'] == null ? null : (map['subscriptionLogEnabled'] as bool).input(),
    );
  }
}

