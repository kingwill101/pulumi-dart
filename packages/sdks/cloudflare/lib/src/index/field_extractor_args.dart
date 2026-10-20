// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_extractor_rule.dart';

/// {@template pulumi_index_field_extractor_field_extractor_args_doc}
/// The set of arguments for FieldExtractor.
/// {@endtemplate}
/// {@macro pulumi_index_field_extractor_field_extractor_args_doc}
class FieldExtractorArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// Extractor type.
  final pulumi.Input<String> extractor;
  final pulumi.Input<List<FieldExtractorRule>> rules;

  /// Creates a new [FieldExtractorArgs].
  /// [accountId] Cloudflare account ID.
  /// [extractor] Extractor type.
  /// [rules] Required.
  const FieldExtractorArgs({
    required this.accountId,
    required this.extractor,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'extractor': extractor,
      'rules': pulumi.Input.mapInputValue<List<FieldExtractorRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FieldExtractorRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldExtractorArgs.fromMap(Map<String, dynamic> map) {
    return FieldExtractorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      extractor: pulumi.Input.fromValue(map['extractor'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FieldExtractorRule>(map['rules']!, (value) => FieldExtractorRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
