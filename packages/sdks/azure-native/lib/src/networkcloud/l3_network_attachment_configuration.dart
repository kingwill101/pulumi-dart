// ignore_for_file: unused_element, unnecessary_cast


class L3NetworkAttachmentConfiguration {
  /// The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  final String? ipamEnabled;
  /// The resource ID of the network that is being configured for attachment.
  final String networkId;
  /// The indicator of how this network will be utilized by the Kubernetes cluster.
  final String? pluginType;

  /// Creates a new [L3NetworkAttachmentConfiguration].
  /// [ipamEnabled] The indication of whether this network will or will not perform IP address management and allocate IP addresses when attached.
  /// [networkId] The resource ID of the network that is being configured for attachment.
  /// [pluginType] The indicator of how this network will be utilized by the Kubernetes cluster.
  L3NetworkAttachmentConfiguration({
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

  factory L3NetworkAttachmentConfiguration.fromMap(Map<String, dynamic> map) {
    return L3NetworkAttachmentConfiguration(
      ipamEnabled: map['ipamEnabled'] == null ? null : map['ipamEnabled'] as String,
      networkId: map['networkId'] as String,
      pluginType: map['pluginType'] == null ? null : map['pluginType'] as String,
    );
  }
}

