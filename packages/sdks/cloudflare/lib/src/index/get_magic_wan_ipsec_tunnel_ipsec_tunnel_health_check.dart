// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_wan_ipsec_tunnel_ipsec_tunnel_health_check_target.dart';

class GetMagicWanIpsecTunnelIpsecTunnelHealthCheck {
  /// The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
  /// Available values: "unidirectional", "bidirectional".
  final pulumi.Input<String> direction;
  /// Determines whether to run healthchecks for a tunnel.
  final pulumi.Input<bool> enabled;
  /// How frequent the health check is run. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  final pulumi.Input<String> rate;
  /// The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customerGreEndpoint address`. This field is ignored for bidirectional healthchecks as the interface*address (not assigned to the Cloudflare side of the tunnel) is used as the target. Must be in object form if the x-magic-new-hc-target header is set to true and string form if x-magic-new-hc-target is absent or set to false.
  final pulumi.Input<GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget> target;
  /// The type of healthcheck to run, reply or request. The default value is `reply`.
  /// Available values: "reply", "request".
  final pulumi.Input<String> type;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnelHealthCheck].
  /// [direction] The direction of the flow of the healthcheck. Either unidirectional, where the probe comes to you via the tunnel and the result comes back to Cloudflare via the open Internet, or bidirectional where both the probe and result come and go via the tunnel.
  /// [enabled] Determines whether to run healthchecks for a tunnel.
  /// [rate] How frequent the health check is run. The default value is `mid`.
  /// [target] The destination address in a request type health check. After the healthcheck is decapsulated at the customer end of the tunnel, the ICMP echo will be forwarded to this address. This field defaults to `customerGreEndpoint address`. This field is ignored for bidirectional healthchecks as the interface*address (not assigned to the Cloudflare side of the tunnel) is used as the target. Must be in object form if the x-magic-new-hc-target header is set to true and string form if x-magic-new-hc-target is absent or set to false.
  /// [type] The type of healthcheck to run, reply or request. The default value is `reply`.
  const GetMagicWanIpsecTunnelIpsecTunnelHealthCheck({
    required this.direction,
    required this.enabled,
    required this.rate,
    required this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'enabled': enabled,
      'rate': rate,
      'target': pulumi.Input.mapInputValue<GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnelHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnelHealthCheck(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      rate: pulumi.Input.fromValue(map['rate'] as String),
      target: pulumi.Input.fromValue(GetMagicWanIpsecTunnelIpsecTunnelHealthCheckTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
