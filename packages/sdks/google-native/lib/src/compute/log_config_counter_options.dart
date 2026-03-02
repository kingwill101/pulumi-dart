// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptions {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigCounterOptionsCustomField>>? customFields;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? field;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? metric;

  /// Creates a new [LogConfigCounterOptions].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptions({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?pulumi.Input.mapOptionalInputValue<List<LogConfigCounterOptionsCustomField>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<LogConfigCounterOptionsCustomField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': ?field,
      'metric': ?metric,
    };
  }

  factory LogConfigCounterOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptions(
      customFields: map['customFields'] == null ? null : (pulumi.Input.decodeList<LogConfigCounterOptionsCustomField>(map['customFields'], (value) => LogConfigCounterOptionsCustomField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      field: map['field'] == null ? null : (map['field'] as String).input(),
      metric: map['metric'] == null ? null : (map['metric'] as String).input(),
    );
  }
}

