// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_extractor_rule_field.dart';

class FieldExtractorRule {
  final pulumi.Input<String?>? description;
  final pulumi.Input<List<FieldExtractorRuleField>> fields;
  final pulumi.Input<String> ref;

  /// Creates a new [FieldExtractorRule].
  /// [description] Optional.
  /// [fields] Required.
  /// [ref] Required.
  const FieldExtractorRule({
    this.description,
    required this.fields,
    required this.ref,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fields': pulumi.Input.mapInputValue<List<FieldExtractorRuleField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<FieldExtractorRuleField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ref': ref,
    };
  }

  factory FieldExtractorRule.fromMap(Map<String, dynamic> map) {
    return FieldExtractorRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldExtractorRuleField>(map['fields']!, (value) => FieldExtractorRuleField.fromMap((value as Map).cast<String, dynamic>()))),
      ref: pulumi.Input.fromValue(map['ref'] as String),
    );
  }
}
