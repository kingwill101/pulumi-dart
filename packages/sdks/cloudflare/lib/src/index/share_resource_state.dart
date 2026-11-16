// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShareResource resources.
class ShareResourceState {
  /// Account identifier.
  final pulumi.Input<String?>? accountId;
  /// When the object was created.
  final pulumi.Input<String?>? created;
  /// Resource Metadata.
  final pulumi.Input<String?>? meta;
  /// When the object was last modified.
  final pulumi.Input<String?>? modified;
  /// The account that owns the resource. Must match the `accountId` in the path.
  final pulumi.Input<String?>? resourceAccountId;
  /// Identifier assigned by the service that owns the shared resource.
  final pulumi.Input<String?>? resourceId;
  /// Resource Type.
  /// Available values: "custom-ruleset", "gateway-policy", "gateway-destination-ip", "gateway-block-page-settings", "gateway-extended-email-matching", "idp-federation-grant", "trust-grant".
  final pulumi.Input<String?>? resourceType;
  /// Resource Version.
  final pulumi.Input<int?>? resourceVersion;
  /// Share identifier tag.
  final pulumi.Input<String?>? shareId;
  /// Resource Status.
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String?>? status;

  /// Creates a new [ShareResourceState].
  /// [accountId] Account identifier.
  /// [created] When the object was created.
  /// [meta] Resource Metadata.
  /// [modified] When the object was last modified.
  /// [resourceAccountId] The account that owns the resource. Must match the `accountId` in the path.
  /// [resourceId] Identifier assigned by the service that owns the shared resource.
  /// [resourceType] Resource Type.
  /// [resourceVersion] Resource Version.
  /// [shareId] Share identifier tag.
  /// [status] Resource Status.
  const ShareResourceState({
    this.accountId,
    this.created,
    this.meta,
    this.modified,
    this.resourceAccountId,
    this.resourceId,
    this.resourceType,
    this.resourceVersion,
    this.shareId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'meta': ?meta,
      'modified': ?modified,
      'resourceAccountId': ?resourceAccountId,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'resourceVersion': ?resourceVersion,
      'shareId': ?shareId,
      'status': ?status,
    };
  }

  factory ShareResourceState.fromMap(Map<String, dynamic> map) {
    return ShareResourceState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAccountId: (() { final guardedValue = map['resourceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
