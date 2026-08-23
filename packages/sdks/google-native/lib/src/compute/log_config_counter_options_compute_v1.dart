// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigCounterOptionsCustomFieldComputeV1>>? customFields;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? field;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? metric;

  /// Creates a new [LogConfigCounterOptionsComputeV1].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  const LogConfigCounterOptionsComputeV1({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?pulumi.Input.mapOptionalInputValue<List<LogConfigCounterOptionsCustomFieldComputeV1>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<LogConfigCounterOptionsCustomFieldComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': ?field,
      'metric': ?metric,
    };
  }

  factory LogConfigCounterOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsComputeV1(
      customFields: (() { final guardedValue = map['customFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldComputeV1>(guardedValue, (value) => LogConfigCounterOptionsCustomFieldComputeV1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
