// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_servers_result.dart';

/// Result data returned by getZeroTrustAccessAiControlsMcpServers.
class GetZeroTrustAccessAiControlsMcpServersInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustAccessAiControlsMcpServersResult>? results;
  /// Search by id, name
  final String? search;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [search] Search by id, name
  const GetZeroTrustAccessAiControlsMcpServersInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpServersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpServersResult>(guardedValue, (value) => GetZeroTrustAccessAiControlsMcpServersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
