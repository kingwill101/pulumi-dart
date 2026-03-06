// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubnetworksSubnetwork {
  /// Description of the subnetwork.
  final pulumi.Input<String> description;
  /// The IP address range represented as a CIDR block.
  final pulumi.Input<String> ipCidrRange;
  /// The name of the subnetwork.
  final pulumi.Input<String> name;
  /// The self link of the parent network.
  final pulumi.Input<String> network;
  /// The name of the parent network computed from `network` attribute.
  final pulumi.Input<String> networkName;
  /// (Deprecated) The name of the parent network computed from `network` attribute. (deprecated and will be removed in a future major release. Use `network_name` instead.)
  final pulumi.Input<String> networkSelfLink;
  /// Whether the VMs in the subnet can access Google services without assigned external IP addresses.
  final pulumi.Input<bool> privateIpGoogleAccess;
  /// The self link of the subnetwork.
  final pulumi.Input<String> selfLink;

  /// Creates a new [GetSubnetworksSubnetwork].
  /// [description] Description of the subnetwork.
  /// [ipCidrRange] The IP address range represented as a CIDR block.
  /// [name] The name of the subnetwork.
  /// [network] The self link of the parent network.
  /// [networkName] The name of the parent network computed from `network` attribute.
  /// [networkSelfLink] (Deprecated) The name of the parent network computed from `network` attribute. (deprecated and will be removed in a future major release. Use `network_name` instead.)
  /// [privateIpGoogleAccess] Whether the VMs in the subnet can access Google services without assigned external IP addresses.
  /// [selfLink] The self link of the subnetwork.
  const GetSubnetworksSubnetwork({
    required this.description,
    required this.ipCidrRange,
    required this.name,
    required this.network,
    required this.networkName,
    required this.networkSelfLink,
    required this.privateIpGoogleAccess,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'ipCidrRange': ipCidrRange,
      'name': name,
      'network': network,
      'networkName': networkName,
      'networkSelfLink': networkSelfLink,
      'privateIpGoogleAccess': privateIpGoogleAccess,
      'selfLink': selfLink,
    };
  }

  factory GetSubnetworksSubnetwork.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksSubnetwork(
      description: pulumi.Input.fromValue(map['description'] as String),
      ipCidrRange: pulumi.Input.fromValue(map['ipCidrRange'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      networkSelfLink: pulumi.Input.fromValue(map['networkSelfLink'] as String),
      privateIpGoogleAccess: pulumi.Input.fromValue(map['privateIpGoogleAccess'] as bool),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
    );
  }
}

