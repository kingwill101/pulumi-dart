// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection {
  /// A list of address prefixes for P2S VPN Client.
  final List<String> addressPrefixes;
  /// The name of the Virtual Network Gateway Client Connection.
  final String name;
  /// A list of names of Virtual Network Gateway Policy Groups.
  final List<String> policyGroupNames;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection].
  /// [addressPrefixes] A list of address prefixes for P2S VPN Client.
  /// [name] The name of the Virtual Network Gateway Client Connection.
  /// [policyGroupNames] A list of names of Virtual Network Gateway Policy Groups.
  VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection({
    required this.addressPrefixes,
    required this.name,
    required this.policyGroupNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'name': name,
      'policyGroupNames': policyGroupNames,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      name: map['name'] as String,
      policyGroupNames: (map['policyGroupNames'] as List).cast<String>(),
    );
  }
}

