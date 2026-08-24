// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_calls_sfu_app_get_calls_sfu_app_args_doc}
/// Arguments for getCallsSfuApp.
/// {@endtemplate}
/// {@macro pulumi_index_get_calls_sfu_app_get_calls_sfu_app_args_doc}
class GetCallsSfuAppArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String> appId;

  /// Creates a new [GetCallsSfuAppArgs].
  /// [accountId] The account identifier tag.
  /// [appId] A Cloudflare-generated unique identifier for a item.
  const GetCallsSfuAppArgs({
    required this.accountId,
    required this.appId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
    };
  }

  factory GetCallsSfuAppArgs.fromMap(Map<String, dynamic> map) {
    return GetCallsSfuAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
    );
  }
}
