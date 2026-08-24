// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_data_tags_get_zero_trust_dlp_data_tags_args_doc}
/// Arguments for getZeroTrustDlpDataTags.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_data_tags_get_zero_trust_dlp_data_tags_args_doc}
class GetZeroTrustDlpDataTagsArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> categoryId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetZeroTrustDlpDataTagsArgs].
  /// [accountId] Required.
  /// [categoryId] Required.
  /// [maxItems] Max items to fetch, default: 1000
  const GetZeroTrustDlpDataTagsArgs({
    required this.accountId,
    required this.categoryId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'categoryId': categoryId,
      'maxItems': ?maxItems,
    };
  }

  factory GetZeroTrustDlpDataTagsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      categoryId: pulumi.Input.fromValue(map['categoryId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
