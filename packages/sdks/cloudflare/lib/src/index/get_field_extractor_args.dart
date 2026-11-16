// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_field_extractor_get_field_extractor_args_doc}
/// Arguments for getFieldExtractor.
/// {@endtemplate}
/// {@macro pulumi_index_get_field_extractor_get_field_extractor_args_doc}
class GetFieldExtractorArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// Extractor type.
  final pulumi.Input<String> extractor;

  /// Creates a new [GetFieldExtractorArgs].
  /// [accountId] Cloudflare account ID.
  /// [extractor] Extractor type.
  const GetFieldExtractorArgs({
    required this.accountId,
    required this.extractor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'extractor': extractor,
    };
  }

  factory GetFieldExtractorArgs.fromMap(Map<String, dynamic> map) {
    return GetFieldExtractorArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      extractor: pulumi.Input.fromValue(map['extractor'] as String),
    );
  }
}
