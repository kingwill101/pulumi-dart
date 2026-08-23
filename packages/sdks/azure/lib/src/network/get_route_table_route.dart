// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTableRoute {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String> addressPrefix;
  /// The name of the Route Table.
  final pulumi.Input<String> name;
  /// Contains the IP address packets should be forwarded to.
  final pulumi.Input<String> nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;

  /// Creates a new [GetRouteTableRoute].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [name] The name of the Route Table.
  /// [nextHopInIpAddress] Contains the IP address packets should be forwarded to.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  const GetRouteTableRoute({
    required this.addressPrefix,
    required this.name,
    required this.nextHopInIpAddress,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': name,
      'nextHopInIpAddress': nextHopInIpAddress,
      'nextHopType': nextHopType,
    };
  }

  factory GetRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoute(
      addressPrefix: pulumi.Input.fromValue(map['addressPrefix'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nextHopInIpAddress: pulumi.Input.fromValue(map['nextHopInIpAddress'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
    );
  }
}
