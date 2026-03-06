// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_field_response_gameservices_v1beta.dart';

/// Increment a streamz counter with the specified metric and field names. Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended. Field names correspond to IAM request parameters and field values are their respective values. Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields. Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==&gt; increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}
class CounterOptionsResponseGameservicesV1beta {
  /// Custom fields.
  final pulumi.Input<List<CustomFieldResponseGameservicesV1beta>> customFields;
  /// The field value to attribute.
  final pulumi.Input<String> field;
  /// The metric to update.
  final pulumi.Input<String> metric;

  /// Creates a new [CounterOptionsResponseGameservicesV1beta].
  /// [customFields] Custom fields.
  /// [field] The field value to attribute.
  /// [metric] The metric to update.
  const CounterOptionsResponseGameservicesV1beta({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields': pulumi.Input.mapInputValue<List<CustomFieldResponseGameservicesV1beta>, List<Map<String, dynamic>>>(customFields, (value) => pulumi.Input.encodeList<CustomFieldResponseGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'field': field,
      'metric': metric,
    };
  }

  factory CounterOptionsResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return CounterOptionsResponseGameservicesV1beta(
      customFields: pulumi.Input.fromValue(pulumi.Input.decodeList<CustomFieldResponseGameservicesV1beta>(map['customFields']!, (value) => CustomFieldResponseGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      field: pulumi.Input.fromValue(map['field'] as String),
      metric: pulumi.Input.fromValue(map['metric'] as String),
    );
  }
}

