// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_upstream_egress_policy.dart';
import 'security_gateway_application_upstream_external.dart';
import 'security_gateway_application_upstream_network.dart';
import 'security_gateway_application_upstream_proxy_protocol.dart';

class SecurityGatewayApplicationUpstream {
  /// Optional. Routing policy information.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamEgressPolicy>? egressPolicy;
  /// List of the external endpoints to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamExternal>? external;
  /// Network to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamNetwork>? network;
  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamProxyProtocol>? proxyProtocol;

  /// Creates a new [SecurityGatewayApplicationUpstream].
  /// [egressPolicy] Optional. Routing policy information.
  /// [external] List of the external endpoints to forward traffic to.
  /// [network] Network to forward traffic to.
  /// [proxyProtocol] Shared proxy configuration for all apps.
  const SecurityGatewayApplicationUpstream({
    this.egressPolicy,
    this.external,
    this.network,
    this.proxyProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressPolicy': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamEgressPolicy, Map<String, dynamic>>(egressPolicy, (value) => value.toMap()),
      'external': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamExternal, Map<String, dynamic>>(external, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'proxyProtocol': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamProxyProtocol, Map<String, dynamic>>(proxyProtocol, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayApplicationUpstream.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstream(
      egressPolicy: (() { final guardedValue = map['egressPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamEgressPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamExternal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyProtocol: (() { final guardedValue = map['proxyProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamProxyProtocol.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
