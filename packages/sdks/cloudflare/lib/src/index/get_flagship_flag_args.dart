// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flag_filter.dart';

/// {@template pulumi_index_get_flagship_flag_get_flagship_flag_args_doc}
/// Arguments for getFlagshipFlag.
/// {@endtemplate}
/// {@macro pulumi_index_get_flagship_flag_get_flagship_flag_args_doc}
class GetFlagshipFlagArgs {
  /// Cloudflare account ID that owns the Flagship app.
  final pulumi.Input<String> accountId;
  /// Flagship app ID returned when the app was created.
  final pulumi.Input<String> appId;
  final pulumi.Input<GetFlagshipFlagFilter?>? filter;
  /// Case-sensitive key identifying the flag within the app.
  final pulumi.Input<String?>? flagKey;

  /// Creates a new [GetFlagshipFlagArgs].
  /// [accountId] Cloudflare account ID that owns the Flagship app.
  /// [appId] Flagship app ID returned when the app was created.
  /// [filter] Optional.
  /// [flagKey] Case-sensitive key identifying the flag within the app.
  const GetFlagshipFlagArgs({
    required this.accountId,
    required this.appId,
    this.filter,
    this.flagKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appId': appId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetFlagshipFlagFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'flagKey': ?flagKey,
    };
  }

  factory GetFlagshipFlagArgs.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appId: pulumi.Input.fromValue(map['appId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetFlagshipFlagFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flagKey: (() { final guardedValue = map['flagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
