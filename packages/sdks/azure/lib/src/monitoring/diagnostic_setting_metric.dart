// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_setting_metric_retention_policy.dart';

class DiagnosticSettingMetric {
  final pulumi.Input<String> category;
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<DiagnosticSettingMetricRetentionPolicy>? retentionPolicy;

  /// Creates a new [DiagnosticSettingMetric].
  /// [category] Required.
  /// [enabled] Optional.
  /// [retentionPolicy] Optional.
  DiagnosticSettingMetric({
    required this.category,
    this.enabled,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'enabled': ?enabled,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<DiagnosticSettingMetricRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory DiagnosticSettingMetric.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingMetric(
      category: (map['category'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (DiagnosticSettingMetricRetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

