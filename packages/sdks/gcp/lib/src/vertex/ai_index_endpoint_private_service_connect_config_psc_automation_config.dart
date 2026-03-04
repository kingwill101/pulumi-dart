// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig {
  /// The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  final pulumi.Input<String> network;

  /// Project id used to create forwarding rule.
  final pulumi.Input<String> projectId;

  /// Creates a new [AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig].
  /// [network] The full name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/get): projects/{project}/global/networks/{network}.
  /// [projectId] Project id used to create forwarding rule.
  AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig({
    required this.network,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'network': network, 'projectId': projectId};
  }

  factory AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig(
      network: pulumi.Input.fromValue(map['network'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
