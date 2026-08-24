// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_network_hostname_route_zero_trust_network_hostname_route_args_doc}
/// The set of arguments for ZeroTrustNetworkHostnameRoute.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_network_hostname_route_zero_trust_network_hostname_route_args_doc}
class ZeroTrustNetworkHostnameRouteArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// An optional description of the hostname route.
  final pulumi.Input<String?>? comment;
  /// The hostname of the route.
  final pulumi.Input<String?>? hostname;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;

  /// Creates a new [ZeroTrustNetworkHostnameRouteArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] An optional description of the hostname route.
  /// [hostname] The hostname of the route.
  /// [tunnelId] UUID of the tunnel.
  const ZeroTrustNetworkHostnameRouteArgs({
    required this.accountId,
    this.comment,
    this.hostname,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comment': ?comment,
      'hostname': ?hostname,
      'tunnelId': ?tunnelId,
    };
  }

  factory ZeroTrustNetworkHostnameRouteArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustNetworkHostnameRouteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
