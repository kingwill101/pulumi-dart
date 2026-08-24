// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_flagship_app_get_flagship_app_args_doc}
/// Arguments for getFlagshipApp.
/// {@endtemplate}
/// {@macro pulumi_index_get_flagship_app_get_flagship_app_args_doc}
class GetFlagshipAppArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// App identifier.
  final pulumi.Input<String> appId;

  /// Creates a new [GetFlagshipAppArgs].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  const GetFlagshipAppArgs({
    required this.accountId,
    required this.appId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
    };
  }

  factory GetFlagshipAppArgs.fromMap(Map<String, dynamic> map) {
    return GetFlagshipAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
    );
  }
}
