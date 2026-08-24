// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_calls_sfu_app_calls_sfu_app_args_doc}
/// The set of arguments for CallsSfuApp.
/// {@endtemplate}
/// {@macro pulumi_index_calls_sfu_app_calls_sfu_app_args_doc}
class CallsSfuAppArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String?>? appId;
  /// A short description of Calls app, not shown to end users.
  final pulumi.Input<String?>? name;

  /// Creates a new [CallsSfuAppArgs].
  /// [accountId] The account identifier tag.
  /// [appId] A Cloudflare-generated unique identifier for a item.
  /// [name] A short description of Calls app, not shown to end users.
  const CallsSfuAppArgs({
    required this.accountId,
    this.appId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': ?appId,
      'name': ?name,
    };
  }

  factory CallsSfuAppArgs.fromMap(Map<String, dynamic> map) {
    return CallsSfuAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
