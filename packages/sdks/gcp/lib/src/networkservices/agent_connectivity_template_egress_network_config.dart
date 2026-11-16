// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_connectivity_template_egress_network_config_dns_peering_config.dart';
import 'agent_connectivity_template_egress_network_config_tls_config.dart';

class AgentConnectivityTemplateEgressNetworkConfig {
  /// DNS peering configuration for the AgentConnectivityTemplate.
  /// When set, the gateway will resolve queries for the configured
  /// `domains` via Cloud DNS in the specified `targetNetwork`.
  /// Structure is documented below.
  final pulumi.Input<AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig?>? dnsPeeringConfig;
  /// The network attachment resource name.
  /// Format: projects/{project}/regions/{region}/networkAttachments/{network_attachment_id}
  final pulumi.Input<String?>? networkAttachment;
  /// The TLS configuration for the egress traffic.
  /// Structure is documented below.
  final pulumi.Input<AgentConnectivityTemplateEgressNetworkConfigTlsConfig?>? tlsConfig;
  /// The VPC egress setting.
  /// Possible values are: `ALL_TRAFFIC`, `PRIVATE_RANGES_ONLY`.
  final pulumi.Input<String?>? vpcEgress;

  /// Creates a new [AgentConnectivityTemplateEgressNetworkConfig].
  /// [dnsPeeringConfig] DNS peering configuration for the AgentConnectivityTemplate.
  /// [networkAttachment] The network attachment resource name.
  /// [tlsConfig] The TLS configuration for the egress traffic.
  /// [vpcEgress] The VPC egress setting.
  const AgentConnectivityTemplateEgressNetworkConfig({
    this.dnsPeeringConfig,
    this.networkAttachment,
    this.tlsConfig,
    this.vpcEgress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPeeringConfig': ?pulumi.Input.mapOptionalInputValue<AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig, Map<String, dynamic>>(dnsPeeringConfig, (value) => value.toMap()),
      'networkAttachment': ?networkAttachment,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<AgentConnectivityTemplateEgressNetworkConfigTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'vpcEgress': ?vpcEgress,
    };
  }

  factory AgentConnectivityTemplateEgressNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AgentConnectivityTemplateEgressNetworkConfig(
      dnsPeeringConfig: (() { final guardedValue = map['dnsPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkAttachment: (() { final guardedValue = map['networkAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsConfig: (() { final guardedValue = map['tlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentConnectivityTemplateEgressNetworkConfigTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcEgress: (() { final guardedValue = map['vpcEgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
