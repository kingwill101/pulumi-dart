// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flagship_flags_result.dart';

/// Result data returned by getFlagshipFlags.
class GetFlagshipFlagsInvokeResult {
  /// Cloudflare account ID.
  final String? accountId;
  /// App identifier.
  final String? appId;
  /// Max items to return (1–200).
  final String? limit;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetFlagshipFlagsResult>? results;

  /// Creates a new [GetFlagshipFlagsInvokeResult].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  /// [limit] Max items to return (1–200).
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetFlagshipFlagsInvokeResult({
    this.accountId,
    this.appId,
    this.limit,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'limit': ?limit,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFlagshipFlagsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFlagshipFlagsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFlagshipFlagsResult>(guardedValue, (value) => GetFlagshipFlagsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
