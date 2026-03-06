// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs {
  /// (Output)
  /// Output only. Error message if the PSC service automation failed.
  final pulumi.Input<String>? errorMessage;
  /// (Output)
  /// Output only. Forwarding rule created by the PSC service automation.
  final pulumi.Input<String>? forwardingRule;
  /// (Output)
  /// Output only. IP address rule created by the PSC service automation.
  final pulumi.Input<String>? ipAddress;
  /// Required. The full name of the Google Compute Engine network.
  /// Format: projects/{project}/global/networks/{network}.
  final pulumi.Input<String> network;
  /// Required. Project id used to create forwarding rule.
  final pulumi.Input<String> projectId;
  /// (Output)
  /// Output only. The state of the PSC service automation.
  final pulumi.Input<String>? state;

  /// Creates a new [AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs].
  /// [errorMessage] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] Required. The full name of the Google Compute Engine network.
  /// [projectId] Required. Project id used to create forwarding rule.
  /// [state] (Output)
  const AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs({
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

  factory AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

