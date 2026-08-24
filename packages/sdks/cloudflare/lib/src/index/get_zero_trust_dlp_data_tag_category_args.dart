// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_data_tag_category_get_zero_trust_dlp_data_tag_category_args_doc}
/// Arguments for getZeroTrustDlpDataTagCategory.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_data_tag_category_get_zero_trust_dlp_data_tag_category_args_doc}
class GetZeroTrustDlpDataTagCategoryArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> categoryId;

  /// Creates a new [GetZeroTrustDlpDataTagCategoryArgs].
  /// [accountId] Required.
  /// [categoryId] Required.
  const GetZeroTrustDlpDataTagCategoryArgs({
    required this.accountId,
    required this.categoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'categoryId': categoryId,
    };
  }

  factory GetZeroTrustDlpDataTagCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagCategoryArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      categoryId: pulumi.Input.fromValue(map['categoryId'] as String),
    );
  }
}
