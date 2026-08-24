// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_flagship_flag_get_flagship_flag_args_doc}
/// Arguments for getFlagshipFlag.
/// {@endtemplate}
/// {@macro pulumi_index_get_flagship_flag_get_flagship_flag_args_doc}
class GetFlagshipFlagArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// App identifier.
  final pulumi.Input<String> appId;
  /// Flag key (slug).
  final pulumi.Input<String> flagKey;

  /// Creates a new [GetFlagshipFlagArgs].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  /// [flagKey] Flag key (slug).
  const GetFlagshipFlagArgs({
    required this.accountId,
    required this.appId,
    required this.flagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
      'flagKey': flagKey,
    };
  }

  factory GetFlagshipFlagArgs.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      flagKey: pulumi.Input.fromValue(map['flagKey'] as String),
    );
  }
}
