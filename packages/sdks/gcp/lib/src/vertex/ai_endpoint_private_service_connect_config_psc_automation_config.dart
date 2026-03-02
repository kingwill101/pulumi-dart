// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointPrivateServiceConnectConfigPscAutomationConfig {
  /// (Output)
  /// Error message if the PSC service automation failed.
  final pulumi.Input<String>? errorMessage;
  /// (Output)
  /// Forwarding rule created by the PSC service automation.
  final pulumi.Input<String>? forwardingRule;
  /// (Output)
  /// IP address rule created by the PSC service automation.
  final pulumi.Input<String>? ipAddress;
  /// The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  final pulumi.Input<String> network;
  /// Project id used to create forwarding rule.
  final pulumi.Input<String> projectId;
  /// (Output)
  /// The state of the PSC service automation.
  final pulumi.Input<String>? state;

  /// Creates a new [AiEndpointPrivateServiceConnectConfigPscAutomationConfig].
  /// [errorMessage] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  /// [projectId] Project id used to create forwarding rule.
  /// [state] (Output)
  AiEndpointPrivateServiceConnectConfigPscAutomationConfig({
    this.errorMessage,
    this.forwardingRule,
    this.ipAddress,
    required this.network,
    required this.projectId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'forwardingRule': ?forwardingRule,
      'ipAddress': ?ipAddress,
      'network': network,
      'projectId': projectId,
      'state': ?state,
    };
  }

  factory AiEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointPrivateServiceConnectConfigPscAutomationConfig(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      forwardingRule: map['forwardingRule'] == null ? null : (map['forwardingRule'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      network: (map['network'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

