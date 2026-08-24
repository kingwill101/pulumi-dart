// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_recipient_resource.dart';

/// Result data returned by getShareRecipient.
class GetShareRecipientResult {
  /// Account identifier.
  final String? accountId;
  /// Share Recipient association status.
  /// Available values: "associating", "associated", "disassociating", "disassociated".
  final String? associationStatus;
  /// When the share was created.
  final String? created;
  /// Share Recipient identifier tag.
  final String? id;
  /// Include resources in the response.
  final bool? includeResources;
  /// When the share was modified.
  final String? modified;
  /// Share Recipient identifier tag.
  final String? recipientId;
  final List<GetShareRecipientResource>? resources;
  /// Share identifier tag.
  final String? shareId;

  /// Creates a new [GetShareRecipientResult].
  /// [accountId] Account identifier.
  /// [associationStatus] Share Recipient association status.
  /// [created] When the share was created.
  /// [id] Share Recipient identifier tag.
  /// [includeResources] Include resources in the response.
  /// [modified] When the share was modified.
  /// [recipientId] Share Recipient identifier tag.
  /// [resources] Optional.
  /// [shareId] Share identifier tag.
  const GetShareRecipientResult({
    this.accountId,
    this.associationStatus,
    this.created,
    this.id,
    this.includeResources,
    this.modified,
    this.recipientId,
    this.resources,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'associationStatus': ?associationStatus,
      'created': ?created,
      'id': ?id,
      'includeResources': ?includeResources,
      'modified': ?modified,
      'recipientId': ?recipientId,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareRecipientResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shareId': ?shareId,
    };
  }

  factory GetShareRecipientResult.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationStatus: (() { final guardedValue = map['associationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recipientId: (() { final guardedValue = map['recipientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareRecipientResource>(guardedValue, (value) => GetShareRecipientResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
