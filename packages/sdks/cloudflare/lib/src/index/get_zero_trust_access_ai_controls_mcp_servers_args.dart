// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_ai_controls_mcp_servers_get_zero_trust_access_ai_controls_mcp_servers_args_doc}
/// Arguments for getZeroTrustAccessAiControlsMcpServers.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_ai_controls_mcp_servers_get_zero_trust_access_ai_controls_mcp_servers_args_doc}
class GetZeroTrustAccessAiControlsMcpServersArgs {
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Search by id, name
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersArgs].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [search] Search by id, name
  const GetZeroTrustAccessAiControlsMcpServersArgs({
    this.accountId,
    this.maxItems,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServersArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
