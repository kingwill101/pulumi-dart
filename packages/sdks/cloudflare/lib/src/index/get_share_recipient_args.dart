// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_share_recipient_get_share_recipient_args_doc}
/// Arguments for getShareRecipient.
/// {@endtemplate}
/// {@macro pulumi_index_get_share_recipient_get_share_recipient_args_doc}
class GetShareRecipientArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// Share Recipient identifier tag.
  final pulumi.Input<String> recipientId;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;

  /// Creates a new [GetShareRecipientArgs].
  /// [accountId] Account identifier.
  /// [includeResources] Include resources in the response.
  /// [recipientId] Share Recipient identifier tag.
  /// [shareId] Share identifier tag.
  const GetShareRecipientArgs({
    required this.accountId,
    this.includeResources,
    required this.recipientId,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'includeResources': ?includeResources,
      'recipientId': recipientId,
      'shareId': shareId,
    };
  }

  factory GetShareRecipientArgs.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recipientId: pulumi.Input.fromValue(map['recipientId'] as String),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
