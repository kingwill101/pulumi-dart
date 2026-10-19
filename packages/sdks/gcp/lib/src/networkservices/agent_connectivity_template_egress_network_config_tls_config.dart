// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentConnectivityTemplateEgressNetworkConfigTlsConfig {
  /// Defines whether additional roots should be trusted.
  /// Possible values are: `NO_ADDITIONAL_ROOTS`, `PUBLICLY_TRUSTED_ROOTS`.
  final pulumi.Input<String> additionalRoots;
  /// The trust config resource name.
  /// Format: projects/{project}/locations/{location}/trustConfigs/{trust_config}
  final pulumi.Input<String?>? trustConfig;

  /// Creates a new [AgentConnectivityTemplateEgressNetworkConfigTlsConfig].
  /// [additionalRoots] Defines whether additional roots should be trusted.
  /// [trustConfig] The trust config resource name.
  const AgentConnectivityTemplateEgressNetworkConfigTlsConfig({
    required this.additionalRoots,
    this.trustConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRoots': additionalRoots,
      'trustConfig': ?trustConfig,
    };
  }

  factory AgentConnectivityTemplateEgressNetworkConfigTlsConfig.fromMap(Map<String, dynamic> map) {
    return AgentConnectivityTemplateEgressNetworkConfigTlsConfig(
      additionalRoots: pulumi.Input.fromValue(map['additionalRoots'] as String),
      trustConfig: (() { final guardedValue = map['trustConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
