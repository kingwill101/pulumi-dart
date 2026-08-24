// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EmailRoutingAddress resources.
class EmailRoutingAddressState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The date and time the destination address has been created.
  final pulumi.Input<String?>? created;
  /// The contact email address of the user.
  final pulumi.Input<String?>? email;
  /// The date and time the destination address was last modified.
  final pulumi.Input<String?>? modified;
  /// Destination address status. Non-admin callers may only set verified addresses back to unverified; setting to verified requires admin privileges.
  /// Available values: "unverified", "verified".
  final pulumi.Input<String?>? status;
  /// Destination address tag. (Deprecated, replaced by destination address identifier)
  final pulumi.Input<String?>? tag;
  /// The date and time the destination address has been verified. Null means not verified yet.
  final pulumi.Input<String?>? verified;

  /// Creates a new [EmailRoutingAddressState].
  /// [accountId] Identifier.
  /// [created] The date and time the destination address has been created.
  /// [email] The contact email address of the user.
  /// [modified] The date and time the destination address was last modified.
  /// [status] Destination address status. Non-admin callers may only set verified addresses back to unverified; setting to verified requires admin privileges.
  /// [tag] Destination address tag. (Deprecated, replaced by destination address identifier)
  /// [verified] The date and time the destination address has been verified. Null means not verified yet.
  const EmailRoutingAddressState({
    this.accountId,
    this.created,
    this.email,
    this.modified,
    this.status,
    this.tag,
    this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'email': ?email,
      'modified': ?modified,
      'status': ?status,
      'tag': ?tag,
      'verified': ?verified,
    };
  }

  factory EmailRoutingAddressState.fromMap(Map<String, dynamic> map) {
    return EmailRoutingAddressState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verified: (() { final guardedValue = map['verified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
