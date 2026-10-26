// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig {
  /// (Optional, Deprecated)
  /// The domain name to peer for DNS resolution. Must be a fully
  /// qualified domain name ending with a dot (for example, `example.com.`).
  ///
  /// &gt; **Warning:** `domain` is deprecated and will be removed in a future major release. Use `domains` instead.
  final pulumi.Input<String?>? domain;
  /// The list of domain names to peer for DNS resolution. Each entry
  /// must be a fully qualified domain name ending with a dot
  /// (for example, `example.com.`). At least one domain must be
  /// specified between `domain` and `domains`.
  final pulumi.Input<List<String>?>? domains;
  /// The URI of the target VPC network for DNS peering. Must be of the
  /// form `projects/{project}/global/networks/{network}`.
  final pulumi.Input<String> targetNetwork;

  /// Creates a new [AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig].
  /// [domain] (Optional, Deprecated)
  /// [domains] The list of domain names to peer for DNS resolution. Each entry
  /// [targetNetwork] The URI of the target VPC network for DNS peering. Must be of the
  const AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig({
    this.domain,
    this.domains,
    required this.targetNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'domains': ?domains,
      'targetNetwork': targetNetwork,
    };
  }

  factory AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig.fromMap(Map<String, dynamic> map) {
    return AgentConnectivityTemplateEgressNetworkConfigDnsPeeringConfig(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetNetwork: pulumi.Input.fromValue(map['targetNetwork'] as String),
    );
  }
}
