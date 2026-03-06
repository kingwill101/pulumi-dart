// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<LogConfigCounterOptionsCustomFieldResponse>> customFields;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> field;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> metric;

  /// Creates a new [LogConfigCounterOptionsResponse].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  const LogConfigCounterOptionsResponse({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': pulumi.Input.mapInputValue<List<LogConfigCounterOptionsCustomFieldResponse>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<LogConfigCounterOptionsCustomFieldResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': field,
      'metric': metric,
    };
  }

  factory LogConfigCounterOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponse(
      customFields: pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldResponse>(map['customFields']!, (value) => LogConfigCounterOptionsCustomFieldResponse.fromMap((value as Map).cast<String, dynamic>()))),
      field: pulumi.Input.fromValue(map['field'] as String),
      metric: pulumi.Input.fromValue(map['metric'] as String),
    );
  }
}

