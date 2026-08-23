// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_gateway_network_config_dns_peering_config.dart';
import 'agent_gateway_network_config_egress.dart';

class AgentGatewayNetworkConfig {
  /// DNS peering configuration for the AgentGateway. When set, the
  /// AgentGateway will resolve queries for the configured `domains` via
  /// Cloud DNS in the specified `targetNetwork`.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewayNetworkConfigDnsPeeringConfig>? dnsPeeringConfig;
  /// Optional PSC-Interface network attachment for connectivity to your
  /// private VPCs network.
  /// Structure is documented below.
  final pulumi.Input<AgentGatewayNetworkConfigEgress> egress;

  /// Creates a new [AgentGatewayNetworkConfig].
  /// [dnsPeeringConfig] DNS peering configuration for the AgentGateway. When set, the
  /// [egress] Optional PSC-Interface network attachment for connectivity to your
  const AgentGatewayNetworkConfig({
    this.dnsPeeringConfig,
    required this.egress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfig': ?pulumi.Input.mapOptionalInputValue<AgentGatewayNetworkConfigDnsPeeringConfig, Map<String, dynamic>>(dnsPeeringConfig, (value) => value.toMap()),
      'egress': pulumi.Input.mapInputValue<AgentGatewayNetworkConfigEgress, Map<String, dynamic>>(egress, (value) => value.toMap()),
    };
  }

  factory AgentGatewayNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AgentGatewayNetworkConfig(
      dnsPeeringConfig: (() { final guardedValue = map['dnsPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentGatewayNetworkConfigDnsPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egress: pulumi.Input.fromValue(AgentGatewayNetworkConfigEgress.fromMap((map['egress']! as Map).cast<String, dynamic>())),
    );
  }
}
