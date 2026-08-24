// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_flagship_flags_get_flagship_flags_args_doc}
/// Arguments for getFlagshipFlags.
/// {@endtemplate}
/// {@macro pulumi_index_get_flagship_flags_get_flagship_flags_args_doc}
class GetFlagshipFlagsArgs {
  /// Cloudflare account ID.
  final pulumi.Input<String> accountId;
  /// App identifier.
  final pulumi.Input<String> appId;
  /// Max items to return (1–200).
  final pulumi.Input<String?>? limit;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetFlagshipFlagsArgs].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  /// [limit] Max items to return (1–200).
  /// [maxItems] Max items to fetch, default: 1000
  const GetFlagshipFlagsArgs({
    required this.accountId,
    required this.appId,
    this.limit,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
      'limit': ?limit,
      'maxItems': ?maxItems,
    };
  }

  factory GetFlagshipFlagsArgs.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
