// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_calls_turn_apps_result.dart';

/// Result data returned by getCallsTurnApps.
class GetCallsTurnAppsInvokeResult {
  /// The account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetCallsTurnAppsResult>? results;

  /// Creates a new [GetCallsTurnAppsInvokeResult].
  /// [accountId] The account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetCallsTurnAppsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCallsTurnAppsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCallsTurnAppsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetCallsTurnAppsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCallsTurnAppsResult>(guardedValue, (value) => GetCallsTurnAppsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
