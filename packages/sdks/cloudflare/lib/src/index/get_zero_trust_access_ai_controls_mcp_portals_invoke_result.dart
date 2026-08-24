// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portals_result.dart';

/// Result data returned by getZeroTrustAccessAiControlsMcpPortals.
class GetZeroTrustAccessAiControlsMcpPortalsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustAccessAiControlsMcpPortalsResult>? results;
  /// Search by id, name, hostname
  final String? search;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [search] Search by id, name, hostname
  const GetZeroTrustAccessAiControlsMcpPortalsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalsResult>(guardedValue, (value) => GetZeroTrustAccessAiControlsMcpPortalsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
