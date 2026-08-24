// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sso_connectors_result.dart';

/// Result data returned by getSsoConnectors.
class GetSsoConnectorsInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetSsoConnectorsResult>? results;

  /// Creates a new [GetSsoConnectorsInvokeResult].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetSsoConnectorsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSsoConnectorsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSsoConnectorsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSsoConnectorsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSsoConnectorsResult>(guardedValue, (value) => GetSsoConnectorsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
