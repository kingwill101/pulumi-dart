// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubnetHostRoute {
  final pulumi.Input<String> destinationCidr;
  final pulumi.Input<String> nextHop;

  /// Creates a new [GetSubnetHostRoute].
  /// [destinationCidr] Required.
  /// [nextHop] Required.
  const GetSubnetHostRoute({
    required this.destinationCidr,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
    };
  }

  factory GetSubnetHostRoute.fromMap(Map<String, dynamic> map) {
    return GetSubnetHostRoute(
      destinationCidr: pulumi.Input.fromValue(map['destinationCidr'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
    );
  }
}

