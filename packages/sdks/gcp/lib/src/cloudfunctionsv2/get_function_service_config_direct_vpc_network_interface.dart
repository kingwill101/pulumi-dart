// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionServiceConfigDirectVpcNetworkInterface {
  /// The name of the VPC network to which the function will be connected. Specify either a VPC network or a subnet, or both. If you specify only a network, the subnet uses the same name as the network.
  final pulumi.Input<String> network;
  /// The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Specify either a VPC network or a subnet, or both. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  final pulumi.Input<String> subnetwork;
  /// Network tags applied to this Cloud Function resource.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [GetFunctionServiceConfigDirectVpcNetworkInterface].
  /// [network] The name of the VPC network to which the function will be connected. Specify either a VPC network or a subnet, or both. If you specify only a network, the subnet uses the same name as the network.
  /// [subnetwork] The name of the VPC subnetwork that the Cloud Function resource will get IPs from. Specify either a VPC network or a subnet, or both. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used.
  /// [tags] Network tags applied to this Cloud Function resource.
  const GetFunctionServiceConfigDirectVpcNetworkInterface({
    required this.network,
    required this.subnetwork,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'subnetwork': subnetwork,
      'tags': tags,
    };
  }

  factory GetFunctionServiceConfigDirectVpcNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetFunctionServiceConfigDirectVpcNetworkInterface(
      network: pulumi.Input.fromValue(map['network'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}
