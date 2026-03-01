// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomFieldComputeBeta>? customFields;
  /// This is deprecated and has no effect. Do not use.
  final String? field;
  /// This is deprecated and has no effect. Do not use.
  final String? metric;

  /// Creates a new [LogConfigCounterOptionsComputeBeta].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsComputeBeta({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?customFields == null ? null : pulumi.Input.encodeList<LogConfigCounterOptionsCustomFieldComputeBeta, Map<String, dynamic>>(customFields!, (value) => value.toMap()),
      'field': ?field,
      'metric': ?metric,
    };
  }

  factory LogConfigCounterOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsComputeBeta(
      customFields: map['customFields'] == null ? null : pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldComputeBeta>(map['customFields'], (value) => LogConfigCounterOptionsCustomFieldComputeBeta.fromMap((value as Map).cast<String, dynamic>())),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}

