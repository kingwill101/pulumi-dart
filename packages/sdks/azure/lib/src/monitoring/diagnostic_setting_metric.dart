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
  const DiagnosticSettingMetric({
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
      category: pulumi.Input.fromValue(map['category'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiagnosticSettingMetricRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

