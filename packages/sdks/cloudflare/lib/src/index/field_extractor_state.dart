// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_extractor_rule.dart';

/// Input properties used for looking up and filtering FieldExtractor resources.
class FieldExtractorState {
  /// Cloudflare account ID.
  final pulumi.Input<String?>? accountId;
  /// Extractor type.
  final pulumi.Input<String?>? extractor;
  final pulumi.Input<List<FieldExtractorRule>?>? rules;

  /// Creates a new [FieldExtractorState].
  /// [accountId] Cloudflare account ID.
  /// [extractor] Extractor type.
  /// [rules] Optional.
  const FieldExtractorState({
    this.accountId,
    this.extractor,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'extractor': ?extractor,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FieldExtractorRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FieldExtractorRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldExtractorState.fromMap(Map<String, dynamic> map) {
    return FieldExtractorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extractor: (() { final guardedValue = map['extractor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldExtractorRule>(guardedValue, (value) => FieldExtractorRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
