// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CallsSfuApp resources.
class CallsSfuAppState {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? appId;
  /// The date and time the item was created.
  final pulumi.Input<String?>? created;
  /// The date and time the item was last modified.
  final pulumi.Input<String?>? modified;
  /// A short description of Calls app, not shown to end users.
  final pulumi.Input<String?>? name;
  /// Bearer token
  final pulumi.Input<String?>? secret;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? uid;

  /// Creates a new [CallsSfuAppState].
  /// [accountId] The account identifier tag.
  /// [appId] A Cloudflare-generated unique identifier for a item.
  /// [created] The date and time the item was created.
  /// [modified] The date and time the item was last modified.
  /// [name] A short description of Calls app, not shown to end users.
  /// [secret] Bearer token
  /// [uid] A Cloudflare-generated unique identifier for a item.
  const CallsSfuAppState({
    this.accountId,
    this.appId,
    this.created,
    this.modified,
    this.name,
    this.secret,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'created': ?created,
      'modified': ?modified,
      'name': ?name,
      'secret': ?secret,
      'uid': ?uid,
    };
  }

  factory CallsSfuAppState.fromMap(Map<String, dynamic> map) {
    return CallsSfuAppState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
