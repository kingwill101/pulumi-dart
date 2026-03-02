// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrunkedNetworkAttachmentConfiguration {
  /// The resource ID of the network that is being configured for attachment.
  final pulumi.Input<String> networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final pulumi.Input<String>? pluginType;

  /// Creates a new [TrunkedNetworkAttachmentConfiguration].
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  TrunkedNetworkAttachmentConfiguration({
    required this.networkId,
    this.pluginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory TrunkedNetworkAttachmentConfiguration.fromMap(Map<String, dynamic> map) {
    return TrunkedNetworkAttachmentConfiguration(
      networkId: (map['networkId'] as String).input(),
      pluginType: map['pluginType'] == null ? null : (map['pluginType'] as String).input(),
    );
  }
}

