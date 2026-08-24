// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_data_tag_get_zero_trust_dlp_data_tag_args_doc}
/// Arguments for getZeroTrustDlpDataTag.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_data_tag_get_zero_trust_dlp_data_tag_args_doc}
class GetZeroTrustDlpDataTagArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> categoryId;
  final pulumi.Input<String> tagId;

  /// Creates a new [GetZeroTrustDlpDataTagArgs].
  /// [accountId] Required.
  /// [categoryId] Required.
  /// [tagId] Required.
  const GetZeroTrustDlpDataTagArgs({
    required this.accountId,
    required this.categoryId,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'categoryId': categoryId,
      'tagId': tagId,
    };
  }

  factory GetZeroTrustDlpDataTagArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      categoryId: pulumi.Input.fromValue(map['categoryId'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
    );
  }
}
