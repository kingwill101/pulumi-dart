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
  SecurityGatewayApplicationUpstream({
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
      egressPolicy: map['egressPolicy'] == null ? null : (SecurityGatewayApplicationUpstreamEgressPolicy.fromMap((map['egressPolicy'] as Map).cast<String, dynamic>())).input(),
      external: map['external'] == null ? null : (SecurityGatewayApplicationUpstreamExternal.fromMap((map['external'] as Map).cast<String, dynamic>())).input(),
      network: map['network'] == null ? null : (SecurityGatewayApplicationUpstreamNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      proxyProtocol: map['proxyProtocol'] == null ? null : (SecurityGatewayApplicationUpstreamProxyProtocol.fromMap((map['proxyProtocol'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

