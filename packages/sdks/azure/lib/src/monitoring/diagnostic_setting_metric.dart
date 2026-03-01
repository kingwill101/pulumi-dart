// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostic_setting_metric_retention_policy.dart';

class DiagnosticSettingMetric {
  final String category;
  final bool? enabled;
  final DiagnosticSettingMetricRetentionPolicy? retentionPolicy;

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
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
    };
  }

  factory DiagnosticSettingMetric.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingMetric(
      category: map['category'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : DiagnosticSettingMetricRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

