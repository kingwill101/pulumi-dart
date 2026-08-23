// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentGatewayNetworkConfigDnsPeeringConfig {
  /// The list of domain names to peer for DNS resolution. Each entry
  /// must be a fully qualified domain name ending with a dot
  /// (for example, `example.com.`).
  final pulumi.Input<List<String>> domains;
  /// The URI of the target VPC network for DNS peering. Must be of the
  /// form `projects/{project}/global/networks/{network}`.
  final pulumi.Input<String> targetNetwork;
  /// The ID of the project that hosts the target VPC network for DNS
  /// peering.
  final pulumi.Input<String> targetProject;

  /// Creates a new [AgentGatewayNetworkConfigDnsPeeringConfig].
  /// [domains] The list of domain names to peer for DNS resolution. Each entry
  /// [targetNetwork] The URI of the target VPC network for DNS peering. Must be of the
  /// [targetProject] The ID of the project that hosts the target VPC network for DNS
  const AgentGatewayNetworkConfigDnsPeeringConfig({
    required this.domains,
    required this.targetNetwork,
    required this.targetProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': domains,
      'targetNetwork': targetNetwork,
      'targetProject': targetProject,
    };
  }

  factory AgentGatewayNetworkConfigDnsPeeringConfig.fromMap(Map<String, dynamic> map) {
    return AgentGatewayNetworkConfigDnsPeeringConfig(
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
      targetNetwork: pulumi.Input.fromValue(map['targetNetwork'] as String),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
    );
  }
}
