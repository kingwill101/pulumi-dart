// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class L2NetworkAttachmentConfigurationResponse {
  /// The resource ID of the network that is being configured for attachment.
  final pulumi.Input<String> networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final pulumi.Input<String?>? pluginType;

  /// Creates a new [L2NetworkAttachmentConfigurationResponse].
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  L2NetworkAttachmentConfigurationResponse({
    required this.networkId,
    pulumi.Input<String?>? pluginType,
  }) : pluginType = pluginType ?? pulumi.Input.fromValue('SRIOV');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory L2NetworkAttachmentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return L2NetworkAttachmentConfigurationResponse(
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      pluginType: (() { final guardedValue = map['pluginType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
