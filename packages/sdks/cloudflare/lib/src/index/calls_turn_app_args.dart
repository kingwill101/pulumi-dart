// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_calls_turn_app_calls_turn_app_args_doc}
/// The set of arguments for CallsTurnApp.
/// {@endtemplate}
/// {@macro pulumi_index_calls_turn_app_calls_turn_app_args_doc}
class CallsTurnAppArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? keyId;
  /// A short description of a TURN key, not shown to end users.
  final pulumi.Input<String?>? name;

  /// Creates a new [CallsTurnAppArgs].
  /// [accountId] The account identifier tag.
  /// [keyId] A Cloudflare-generated unique identifier for a item.
  /// [name] A short description of a TURN key, not shown to end users.
  const CallsTurnAppArgs({
    required this.accountId,
    this.keyId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyId': ?keyId,
      'name': ?name,
    };
  }

  factory CallsTurnAppArgs.fromMap(Map<String, dynamic> map) {
    return CallsTurnAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
