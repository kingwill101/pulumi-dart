// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_field_extractor_rule_field.dart';

class GetFieldExtractorRule {
  /// Human-readable rule description.
  final pulumi.Input<String> description;
  final pulumi.Input<List<GetFieldExtractorRuleField>> fields;
  /// Stable rule identifier.
  final pulumi.Input<String> ref;

  /// Creates a new [GetFieldExtractorRule].
  /// [description] Human-readable rule description.
  /// [fields] Required.
  /// [ref] Stable rule identifier.
  const GetFieldExtractorRule({
    required this.description,
    required this.fields,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'fields': pulumi.Input.mapInputValue<List<GetFieldExtractorRuleField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetFieldExtractorRuleField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ref': ref,
    };
  }

  factory GetFieldExtractorRule.fromMap(Map<String, dynamic> map) {
    return GetFieldExtractorRule(
      description: pulumi.Input.fromValue(map['description'] as String),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFieldExtractorRuleField>(map['fields']!, (value) => GetFieldExtractorRuleField.fromMap((value as Map).cast<String, dynamic>()))),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}
