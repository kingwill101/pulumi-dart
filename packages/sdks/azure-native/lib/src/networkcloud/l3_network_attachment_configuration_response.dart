// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class L3NetworkAttachmentConfigurationResponse {
  /// The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  final pulumi.Input<String>? ipamEnabled;
  /// The resource ID of the network that is being configured for attachment.
  final pulumi.Input<String> networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final pulumi.Input<String>? pluginType;

  /// Creates a new [L3NetworkAttachmentConfigurationResponse].
  /// [ipamEnabled] The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  L3NetworkAttachmentConfigurationResponse({
    this.ipamEnabled,
    required this.networkId,
    this.pluginType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamEnabled': ?ipamEnabled,
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory L3NetworkAttachmentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return L3NetworkAttachmentConfigurationResponse(
      ipamEnabled: map['ipamEnabled'] == null ? null : (map['ipamEnabled'] as String).input(),
      networkId: (map['networkId'] as String).input(),
      pluginType: map['pluginType'] == null ? null : (map['pluginType'] as String).input(),
    );
  }
}

