// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CallsTurnApp resources.
class CallsTurnAppState {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The date and time the item was created.
  final pulumi.Input<String?>? created;
  /// Bearer token
  final pulumi.Input<String?>? key;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? keyId;
  /// The date and time the item was last modified.
  final pulumi.Input<String?>? modified;
  /// A short description of a TURN key, not shown to end users.
  final pulumi.Input<String?>? name;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? uid;

  /// Creates a new [CallsTurnAppState].
  /// [accountId] The account identifier tag.
  /// [created] The date and time the item was created.
  /// [key] Bearer token
  /// [keyId] A Cloudflare-generated unique identifier for a item.
  /// [modified] The date and time the item was last modified.
  /// [name] A short description of a TURN key, not shown to end users.
  /// [uid] A Cloudflare-generated unique identifier for a item.
  const CallsTurnAppState({
    this.accountId,
    this.created,
    this.key,
    this.keyId,
    this.modified,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'key': ?key,
      'keyId': ?keyId,
      'modified': ?modified,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory CallsTurnAppState.fromMap(Map<String, dynamic> map) {
    return CallsTurnAppState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
