// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_excluded_recipient.dart';
import 'share_recipient.dart';
import 'share_resource.dart';

/// {@template pulumi_index_share_share_args_doc}
/// The set of arguments for Share.
/// {@endtemplate}
/// {@macro pulumi_index_share_share_args_doc}
class ShareArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Accounts to exclude from an organization-targeted share. Only allowed when `recipients` contains no account entries. The share owner cannot be excluded. Duplicate entries are ignored.
  final pulumi.Input<List<ShareExcludedRecipient>?>? excludedRecipients;
  /// Include recipient counts in the response.
  final pulumi.Input<bool?>? includeRecipientCounts;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// Available values: "api", "mirror".
  final pulumi.Input<String?>? includeTagsFrom;
  /// The name of the share.
  final pulumi.Input<String> name;
  final pulumi.Input<List<ShareRecipient>?>? recipients;
  final pulumi.Input<List<ShareResource>?>? resources;
  /// Tags associated with the share.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ShareArgs].
  /// [accountId] Account identifier.
  /// [excludedRecipients] Accounts to exclude from an organization-targeted share. Only allowed when `recipients` contains no account entries. The share owner cannot be excluded. Duplicate entries are ignored.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [includeTagsFrom] Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// [name] The name of the share.
  /// [recipients] Optional.
  /// [resources] Optional.
  /// [tags] Tags associated with the share.
  const ShareArgs({
    required this.accountId,
    this.excludedRecipients,
    this.includeRecipientCounts,
    this.includeResources,
    this.includeTagsFrom,
    required this.name,
    this.recipients,
    this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'excludedRecipients': ?pulumi.Input.mapOptionalInputValue<List<ShareExcludedRecipient>, List<Map<String, dynamic>>>(excludedRecipients, (value) => pulumi.Input.encodeList<ShareExcludedRecipient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeRecipientCounts': ?includeRecipientCounts,
      'includeResources': ?includeResources,
      'includeTagsFrom': ?includeTagsFrom,
      'name': name,
      'recipients': ?pulumi.Input.mapOptionalInputValue<List<ShareRecipient>, List<Map<String, dynamic>>>(recipients, (value) => pulumi.Input.encodeList<ShareRecipient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ShareResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ShareResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      excludedRecipients: (() { final guardedValue = map['excludedRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareExcludedRecipient>(guardedValue, (value) => ShareExcludedRecipient.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeTagsFrom: (() { final guardedValue = map['includeTagsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      recipients: (() { final guardedValue = map['recipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareRecipient>(guardedValue, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareResource>(guardedValue, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
