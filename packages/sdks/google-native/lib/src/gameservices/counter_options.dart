// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_field.dart';

/// Increment a streamz counter with the specified metric and field names. Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended. Field names correspond to IAM request parameters and field values are their respective values. Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields. Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==> increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}
class CounterOptions {
  /// Custom fields.
  final pulumi.Input<List<CustomField>>? customFields;
  /// The field value to attribute.
  final pulumi.Input<String>? field;
  /// The metric to update.
  final pulumi.Input<String>? metric;

  /// Creates a new [CounterOptions].
  /// [customFields] Custom fields.
  /// [field] The field value to attribute.
  /// [metric] The metric to update.
  CounterOptions({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': ?pulumi.Input.mapOptionalInputValue<List<CustomField>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<CustomField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': ?field,
      'metric': ?metric,
    };
  }

  factory CounterOptions.fromMap(Map<String, dynamic> map) {
    return CounterOptions(
      customFields: map['customFields'] == null ? null : (pulumi.Input.decodeList<CustomField>(map['customFields']!, (value) => CustomField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      field: map['field'] == null ? null : (map['field']! as String).input(),
      metric: map['metric'] == null ? null : (map['metric']! as String).input(),
    );
  }
}

