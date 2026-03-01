// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a network interface resource attached to a VM.
class NetworkInterfaceResponse {
  /// Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final String network;
  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final String nicType;
  /// Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final String subnet;

  /// Creates a new [NetworkInterfaceResponse].
  /// [network] Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [subnet] Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  NetworkInterfaceResponse({
    required this.network,
    required this.nicType,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'nicType': nicType,
      'subnet': subnet,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      network: map['network'] as String,
      nicType: map['nicType'] as String,
      subnet: map['subnet'] as String,
    );
  }
}

