// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrunkedNetworkAttachmentConfigurationResponse {
  /// The resource ID of the network that is being configured for attachment.
  final pulumi.Input<String> networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final pulumi.Input<String>? pluginType;

  /// Creates a new [TrunkedNetworkAttachmentConfigurationResponse].
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  TrunkedNetworkAttachmentConfigurationResponse({
    required this.networkId,
    this.pluginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory TrunkedNetworkAttachmentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TrunkedNetworkAttachmentConfigurationResponse(
      networkId: (map['networkId'] as String).input(),
      pluginType: map['pluginType'] == null ? null : (map['pluginType']! as String).input(),
    );
  }
}

