// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_share_recipients_get_share_recipients_args_doc}
/// Arguments for getShareRecipients.
/// {@endtemplate}
/// {@macro pulumi_index_get_share_recipients_get_share_recipients_args_doc}
class GetShareRecipientsArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;

  /// Creates a new [GetShareRecipientsArgs].
  /// [accountId] Account identifier.
  /// [includeResources] Include resources in the response.
  /// [maxItems] Max items to fetch, default: 1000
  /// [shareId] Share identifier tag.
  const GetShareRecipientsArgs({
    required this.accountId,
    this.includeResources,
    this.maxItems,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'includeResources': ?includeResources,
      'maxItems': ?maxItems,
      'shareId': shareId,
    };
  }

  factory GetShareRecipientsArgs.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
