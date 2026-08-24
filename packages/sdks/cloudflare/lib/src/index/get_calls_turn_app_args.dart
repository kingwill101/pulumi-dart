// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_calls_turn_app_get_calls_turn_app_args_doc}
/// Arguments for getCallsTurnApp.
/// {@endtemplate}
/// {@macro pulumi_index_get_calls_turn_app_get_calls_turn_app_args_doc}
class GetCallsTurnAppArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a item.
  final pulumi.Input<String> keyId;

  /// Creates a new [GetCallsTurnAppArgs].
  /// [accountId] The account identifier tag.
  /// [keyId] A Cloudflare-generated unique identifier for a item.
  const GetCallsTurnAppArgs({
    required this.accountId,
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'keyId': keyId,
    };
  }

  factory GetCallsTurnAppArgs.fromMap(Map<String, dynamic> map) {
    return GetCallsTurnAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}
