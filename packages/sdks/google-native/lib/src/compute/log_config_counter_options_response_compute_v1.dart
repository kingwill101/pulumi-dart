// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_response_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigCounterOptionsCustomFieldResponseComputeV1>> customFields;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> field;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> metric;

  /// Creates a new [LogConfigCounterOptionsResponseComputeV1].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  const LogConfigCounterOptionsResponseComputeV1({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': pulumi.Input.mapInputValue<List<LogConfigCounterOptionsCustomFieldResponseComputeV1>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<LogConfigCounterOptionsCustomFieldResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': field,
      'metric': metric,
    };
  }

  factory LogConfigCounterOptionsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponseComputeV1(
      customFields: pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldResponseComputeV1>(map['customFields']!, (value) => LogConfigCounterOptionsCustomFieldResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      field: pulumi.Input.fromValue(map['field'] as String),
      metric: pulumi.Input.fromValue(map['metric'] as String),
    );
  }
}
