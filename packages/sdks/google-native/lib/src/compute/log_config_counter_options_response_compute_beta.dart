// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_response_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponseComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigCounterOptionsCustomFieldResponseComputeBeta>> customFields;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> field;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> metric;

  /// Creates a new [LogConfigCounterOptionsResponseComputeBeta].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsResponseComputeBeta({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': pulumi.Input.mapInputValue<List<LogConfigCounterOptionsCustomFieldResponseComputeBeta>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<LogConfigCounterOptionsCustomFieldResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': field,
      'metric': metric,
    };
  }

  factory LogConfigCounterOptionsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponseComputeBeta(
      customFields: (pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldResponseComputeBeta>(map['customFields'], (value) => LogConfigCounterOptionsCustomFieldResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      field: (map['field'] as String).input(),
      metric: (map['metric'] as String).input(),
    );
  }
}

