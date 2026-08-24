// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_recipient.dart';
import 'share_resource.dart';

/// Input properties used for looking up and filtering Share resources.
class ShareState {
  /// Account identifier.
  final pulumi.Input<String?>? accountId;
  /// The display name of an account.
  final pulumi.Input<String?>? accountName;
  /// The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int?>? associatedRecipientCount;
  /// The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int?>? associatingRecipientCount;
  /// When the share was created.
  final pulumi.Input<String?>? created;
  /// The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int?>? disassociatedRecipientCount;
  /// The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  final pulumi.Input<int?>? disassociatingRecipientCount;
  /// Available values: "sent", "received".
  final pulumi.Input<String?>? kind;
  /// When the share was modified.
  final pulumi.Input<String?>? modified;
  /// The name of the share.
  final pulumi.Input<String?>? name;
  /// Organization identifier.
  final pulumi.Input<String?>? organizationId;
  final pulumi.Input<List<ShareRecipient>?>? recipients;
  final pulumi.Input<List<ShareResource>?>? resources;
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String?>? status;
  /// Available values: "account", "organization".
  final pulumi.Input<String?>? targetType;

  /// Creates a new [ShareState].
  /// [accountId] Account identifier.
  /// [accountName] The display name of an account.
  /// [associatedRecipientCount] The number of recipients in the 'associated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [associatingRecipientCount] The number of recipients in the 'associating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [created] When the share was created.
  /// [disassociatedRecipientCount] The number of recipients in the 'disassociated' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [disassociatingRecipientCount] The number of recipients in the 'disassociating' state. This field is only included when requested via the 'include*recipient*counts' parameter.
  /// [kind] Available values: "sent", "received".
  /// [modified] When the share was modified.
  /// [name] The name of the share.
  /// [organizationId] Organization identifier.
  /// [recipients] Optional.
  /// [resources] Optional.
  /// [status] Available values: "active", "deleting", "deleted".
  /// [targetType] Available values: "account", "organization".
  const ShareState({
    this.accountId,
    this.accountName,
    this.associatedRecipientCount,
    this.associatingRecipientCount,
    this.created,
    this.disassociatedRecipientCount,
    this.disassociatingRecipientCount,
    this.kind,
    this.modified,
    this.name,
    this.organizationId,
    this.recipients,
    this.resources,
    this.status,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
      'associatedRecipientCount': ?associatedRecipientCount,
      'associatingRecipientCount': ?associatingRecipientCount,
      'created': ?created,
      'disassociatedRecipientCount': ?disassociatedRecipientCount,
      'disassociatingRecipientCount': ?disassociatingRecipientCount,
      'kind': ?kind,
      'modified': ?modified,
      'name': ?name,
      'organizationId': ?organizationId,
      'recipients': ?pulumi.Input.mapOptionalInputValue<List<ShareRecipient>, List<Map<String, dynamic>>>(recipients, (value) => pulumi.Input.encodeList<ShareRecipient, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ShareResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ShareResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'targetType': ?targetType,
    };
  }

  factory ShareState.fromMap(Map<String, dynamic> map) {
    return ShareState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedRecipientCount: (() { final guardedValue = map['associatedRecipientCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      associatingRecipientCount: (() { final guardedValue = map['associatingRecipientCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disassociatedRecipientCount: (() { final guardedValue = map['disassociatedRecipientCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      disassociatingRecipientCount: (() { final guardedValue = map['disassociatingRecipientCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipients: (() { final guardedValue = map['recipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareRecipient>(guardedValue, (value) => ShareRecipient.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ShareResource>(guardedValue, (value) => ShareResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
