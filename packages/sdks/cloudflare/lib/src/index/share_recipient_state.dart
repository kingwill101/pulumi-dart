// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_recipient_resource.dart';

/// Input properties used for looking up and filtering ShareRecipient resources.
class ShareRecipientState {
  /// Account identifier.
  final pulumi.Input<String?>? accountId;
  /// Share Recipient association status.
  /// Available values: "associating", "associated", "disassociating", "disassociated".
  final pulumi.Input<String?>? associationStatus;
  /// When the share was created.
  final pulumi.Input<String?>? created;
  /// When the share was modified.
  final pulumi.Input<String?>? modified;
  /// Organization identifier.
  final pulumi.Input<String?>? organizationId;
  /// The account that will receive the share.
  final pulumi.Input<String?>? recipientAccountId;
  final pulumi.Input<List<ShareRecipientResource>?>? resources;
  /// Share identifier tag.
  final pulumi.Input<String?>? shareId;

  /// Creates a new [ShareRecipientState].
  /// [accountId] Account identifier.
  /// [associationStatus] Share Recipient association status.
  /// [created] When the share was created.
  /// [modified] When the share was modified.
  /// [organizationId] Organization identifier.
  /// [recipientAccountId] The account that will receive the share.
  /// [resources] Optional.
  /// [shareId] Share identifier tag.
  const ShareRecipientState({
    this.accountId,
    this.associationStatus,
    this.created,
    this.modified,
    this.organizationId,
    this.recipientAccountId,
    this.resources,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'associationStatus': ?associationStatus,
      'created': ?created,
      'modified': ?modified,
      'organizationId': ?organizationId,
      'recipientAccountId': ?recipientAccountId,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ShareRecipientResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ShareRecipientResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareId': ?shareId,
    };
  }

  factory ShareRecipientState.fromMap(Map<String, dynamic> map) {
    return ShareRecipientState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationStatus: (() { final guardedValue = map['associationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipientAccountId: (() { final guardedValue = map['recipientAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareRecipientResource>(guardedValue, (value) => ShareRecipientResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
