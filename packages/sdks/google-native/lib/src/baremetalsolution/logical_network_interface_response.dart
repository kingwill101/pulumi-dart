// ignore_for_file: unused_element, unnecessary_cast


/// Each logical network interface is effectively a network and IP pair.
class LogicalNetworkInterfaceResponse {
  /// Whether this interface is the default gateway for the instance. Only one interface can be the default gateway for the instance.
  final bool defaultGateway;
  /// IP address in the network
  final String ipAddress;
  /// Name of the network
  final String network;
  /// Type of network.
  final String networkType;

  /// Creates a new [LogicalNetworkInterfaceResponse].
  /// [defaultGateway] Whether this interface is the default gateway for the instance. Only one interface can be the default gateway for the instance.
  /// [ipAddress] IP address in the network
  /// [network] Name of the network
  /// [networkType] Type of network.
  LogicalNetworkInterfaceResponse({
    required this.defaultGateway,
    required this.ipAddress,
    required this.network,
    required this.networkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGateway': defaultGateway,
      'ipAddress': ipAddress,
      'network': network,
      'networkType': networkType,
    };
  }

  factory LogicalNetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkInterfaceResponse(
      defaultGateway: map['defaultGateway'] as bool,
      ipAddress: map['ipAddress'] as String,
      network: map['network'] as String,
      networkType: map['networkType'] as String,
    );
  }
}

