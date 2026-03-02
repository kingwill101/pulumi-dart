// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rule_log_tag_filter.dart';
import 'tag_rule_metric_tag_filter.dart';

/// Input properties used for looking up and filtering TagRule resources.
class TagRuleState {
  /// Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool>? activityLogEnabled;
  /// Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool>? azureActiveDirectoryLogEnabled;
  /// A `log_tag_filter` block as defined below.
  final pulumi.Input<List<TagRuleLogTagFilter>>? logTagFilters;
  /// Whether metrics should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool>? metricEnabled;
  /// A `metric_tag_filter` block as defined below.
  final pulumi.Input<List<TagRuleMetricTagFilter>>? metricTagFilters;
  /// Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created.
  final pulumi.Input<String>? monitorId;
  /// Whether subscription logs should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool>? subscriptionLogEnabled;

  /// Creates a new [TagRuleState].
  /// [activityLogEnabled] Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`.
  /// [azureActiveDirectoryLogEnabled] Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`.
  /// [logTagFilters] A `log_tag_filter` block as defined below.
  /// [metricEnabled] Whether metrics should be sent for the Monitor resource. Defaults to `false`.
  /// [metricTagFilters] A `metric_tag_filter` block as defined below.
  /// [monitorId] Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created.
  /// [subscriptionLogEnabled] Whether subscription logs should be sent for the Monitor resource. Defaults to `false`.
  TagRuleState({
    this.activityLogEnabled,
    this.azureActiveDirectoryLogEnabled,
    this.logTagFilters,
    this.metricEnabled,
    this.metricTagFilters,
    this.monitorId,
    this.subscriptionLogEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLogEnabled': ?activityLogEnabled,
      'azureActiveDirectoryLogEnabled': ?azureActiveDirectoryLogEnabled,
      'logTagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagRuleLogTagFilter>, List<Map<String, dynamic>>>(logTagFilters, (value) => pulumi.Input.encodeList<TagRuleLogTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricEnabled': ?metricEnabled,
      'metricTagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagRuleMetricTagFilter>, List<Map<String, dynamic>>>(metricTagFilters, (value) => pulumi.Input.encodeList<TagRuleMetricTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorId': ?monitorId,
      'subscriptionLogEnabled': ?subscriptionLogEnabled,
    };
  }

  factory TagRuleState.fromMap(Map<String, dynamic> map) {
    return TagRuleState(
      activityLogEnabled: map['activityLogEnabled'] == null ? null : (map['activityLogEnabled']! as bool).input(),
      azureActiveDirectoryLogEnabled: map['azureActiveDirectoryLogEnabled'] == null ? null : (map['azureActiveDirectoryLogEnabled']! as bool).input(),
      logTagFilters: map['logTagFilters'] == null ? null : (pulumi.Input.decodeList<TagRuleLogTagFilter>(map['logTagFilters']!, (value) => TagRuleLogTagFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricEnabled: map['metricEnabled'] == null ? null : (map['metricEnabled']! as bool).input(),
      metricTagFilters: map['metricTagFilters'] == null ? null : (pulumi.Input.decodeList<TagRuleMetricTagFilter>(map['metricTagFilters']!, (value) => TagRuleMetricTagFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      monitorId: map['monitorId'] == null ? null : (map['monitorId']! as String).input(),
      subscriptionLogEnabled: map['subscriptionLogEnabled'] == null ? null : (map['subscriptionLogEnabled']! as bool).input(),
    );
  }
}

