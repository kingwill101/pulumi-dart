// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dlp_data_tag_category_zero_trust_dlp_data_tag_category_args_doc}
/// The set of arguments for ZeroTrustDlpDataTagCategory.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_data_tag_category_zero_trust_dlp_data_tag_category_args_doc}
class ZeroTrustDlpDataTagCategoryArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustDlpDataTagCategoryArgs].
  /// [accountId] Required.
  /// [description] Optional.
  /// [name] Required.
  const ZeroTrustDlpDataTagCategoryArgs({
    required this.accountId,
    this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'name': name,
    };
  }

  factory ZeroTrustDlpDataTagCategoryArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataTagCategoryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
