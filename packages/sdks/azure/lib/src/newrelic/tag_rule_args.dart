// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rule_log_tag_filter.dart';
import 'tag_rule_metric_tag_filter.dart';

/// {@template pulumi_newrelic_tag_rule_tag_rule_args_doc}
/// The set of arguments for TagRule.
/// {@endtemplate}
/// {@macro pulumi_newrelic_tag_rule_tag_rule_args_doc}
class TagRuleArgs {
  /// Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool?>? activityLogEnabled;
  /// Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool?>? azureActiveDirectoryLogEnabled;
  /// A `logTagFilter` block as defined below.
  final pulumi.Input<List<TagRuleLogTagFilter>?>? logTagFilters;
  /// Whether metrics should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool?>? metricEnabled;
  /// A `metricTagFilter` block as defined below.
  final pulumi.Input<List<TagRuleMetricTagFilter>?>? metricTagFilters;
  /// Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created.
  final pulumi.Input<String> monitorId;
  /// Whether subscription logs should be sent for the Monitor resource. Defaults to `false`.
  final pulumi.Input<bool?>? subscriptionLogEnabled;

  /// Creates a new [TagRuleArgs].
  /// [activityLogEnabled] Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`.
  /// [azureActiveDirectoryLogEnabled] Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`.
  /// [logTagFilters] A `logTagFilter` block as defined below.
  /// [metricEnabled] Whether metrics should be sent for the Monitor resource. Defaults to `false`.
  /// [metricTagFilters] A `metricTagFilter` block as defined below.
  /// [monitorId] Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created.
  /// [subscriptionLogEnabled] Whether subscription logs should be sent for the Monitor resource. Defaults to `false`.
  const TagRuleArgs({
    this.activityLogEnabled,
    this.azureActiveDirectoryLogEnabled,
    this.logTagFilters,
    this.metricEnabled,
    this.metricTagFilters,
    required this.monitorId,
    this.subscriptionLogEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLogEnabled': ?activityLogEnabled,
      'azureActiveDirectoryLogEnabled': ?azureActiveDirectoryLogEnabled,
      'logTagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagRuleLogTagFilter>, List<Map<String, dynamic>>>(logTagFilters, (value) => pulumi.Input.encodeList<TagRuleLogTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricEnabled': ?metricEnabled,
      'metricTagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagRuleMetricTagFilter>, List<Map<String, dynamic>>>(metricTagFilters, (value) => pulumi.Input.encodeList<TagRuleMetricTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monitorId': monitorId,
      'subscriptionLogEnabled': ?subscriptionLogEnabled,
    };
  }

  factory TagRuleArgs.fromMap(Map<String, dynamic> map) {
    return TagRuleArgs(
      activityLogEnabled: (() { final guardedValue = map['activityLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureActiveDirectoryLogEnabled: (() { final guardedValue = map['azureActiveDirectoryLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logTagFilters: (() { final guardedValue = map['logTagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagRuleLogTagFilter>(guardedValue, (value) => TagRuleLogTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricEnabled: (() { final guardedValue = map['metricEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricTagFilters: (() { final guardedValue = map['metricTagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagRuleMetricTagFilter>(guardedValue, (value) => TagRuleMetricTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monitorId: pulumi.Input.fromValue(map['monitorId'] as String),
      subscriptionLogEnabled: (() { final guardedValue = map['subscriptionLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
