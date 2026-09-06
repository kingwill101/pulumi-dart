// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class L3NetworkAttachmentConfiguration {
  /// The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  final pulumi.Input<dynamic>? ipamEnabled;
  /// The resource ID of the network that is being configured for attachment.
  final pulumi.Input<String> networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final pulumi.Input<dynamic>? pluginType;

  /// Creates a new [L3NetworkAttachmentConfiguration].
  /// [ipamEnabled] The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  L3NetworkAttachmentConfiguration({
    pulumi.Input<dynamic>? ipamEnabled,
    required this.networkId,
    pulumi.Input<dynamic>? pluginType,
  }) : ipamEnabled = ipamEnabled ?? pulumi.Input.fromValue('False'), pluginType = pluginType ?? pulumi.Input.fromValue('SRIOV');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipamEnabled': ?ipamEnabled,
      'networkId': networkId,
      'pluginType': ?pluginType,
    };
  }

  factory L3NetworkAttachmentConfiguration.fromMap(Map<String, dynamic> map) {
    return L3NetworkAttachmentConfiguration(
      ipamEnabled: (() { final guardedValue = map['ipamEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      pluginType: (() { final guardedValue = map['pluginType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
