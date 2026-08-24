// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_network_hostname_route_filter.dart';

/// {@template pulumi_index_get_zero_trust_network_hostname_route_get_zero_trust_network_hostname_route_args_doc}
/// Arguments for getZeroTrustNetworkHostnameRoute.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_network_hostname_route_get_zero_trust_network_hostname_route_args_doc}
class GetZeroTrustNetworkHostnameRouteArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustNetworkHostnameRouteFilter?>? filter;
  /// The hostname route ID.
  final pulumi.Input<String?>? hostnameRouteId;

  /// Creates a new [GetZeroTrustNetworkHostnameRouteArgs].
  /// [accountId] Cloudflare account ID
  /// [filter] Optional.
  /// [hostnameRouteId] The hostname route ID.
  const GetZeroTrustNetworkHostnameRouteArgs({
    this.accountId,
    this.filter,
    this.hostnameRouteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustNetworkHostnameRouteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'hostnameRouteId': ?hostnameRouteId,
    };
  }

  factory GetZeroTrustNetworkHostnameRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRouteArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustNetworkHostnameRouteFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostnameRouteId: (() { final guardedValue = map['hostnameRouteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
