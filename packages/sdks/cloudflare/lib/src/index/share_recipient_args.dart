// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_share_recipient_share_recipient_args_doc}
/// The set of arguments for ShareRecipient.
/// {@endtemplate}
/// {@macro pulumi_index_share_recipient_share_recipient_args_doc}
class ShareRecipientArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// The account that will receive the share.
  final pulumi.Input<String?>? recipientAccountId;
  /// Share identifier tag.
  final pulumi.Input<String> shareId;

  /// Creates a new [ShareRecipientArgs].
  /// [accountId] Account identifier.
  /// [includeResources] Include resources in the response.
  /// [recipientAccountId] The account that will receive the share.
  /// [shareId] Share identifier tag.
  const ShareRecipientArgs({
    required this.accountId,
    this.includeResources,
    this.recipientAccountId,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'includeResources': ?includeResources,
      'recipientAccountId': ?recipientAccountId,
      'shareId': shareId,
    };
  }

  factory ShareRecipientArgs.fromMap(Map<String, dynamic> map) {
    return ShareRecipientArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recipientAccountId: (() { final guardedValue = map['recipientAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}
