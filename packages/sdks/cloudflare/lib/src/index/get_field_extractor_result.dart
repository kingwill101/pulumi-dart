// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_field_extractor_rule.dart';

/// Result data returned by getFieldExtractor.
class GetFieldExtractorResult {
  /// Cloudflare account ID.
  final String? accountId;
  /// Extractor type.
  final String? extractor;
  final List<GetFieldExtractorRule>? rules;

  /// Creates a new [GetFieldExtractorResult].
  /// [accountId] Cloudflare account ID.
  /// [extractor] Extractor type.
  /// [rules] Optional.
  const GetFieldExtractorResult({
    this.accountId,
    this.extractor,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'extractor': ?extractor,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFieldExtractorRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFieldExtractorResult.fromMap(Map<String, dynamic> map) {
    return GetFieldExtractorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extractor: (() { final guardedValue = map['extractor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFieldExtractorRule>(guardedValue, (value) => GetFieldExtractorRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
