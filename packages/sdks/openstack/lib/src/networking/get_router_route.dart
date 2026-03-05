// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterRoute {
  final pulumi.Input<String> destinationCidr;
  final pulumi.Input<String> nextHop;

  /// Creates a new [GetRouterRoute].
  /// [destinationCidr] Required.
  /// [nextHop] Required.
  GetRouterRoute({
    required this.destinationCidr,
    required this.nextHop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
    };
  }

  factory GetRouterRoute.fromMap(Map<String, dynamic> map) {
    return GetRouterRoute(
      destinationCidr: pulumi.Input.fromValue(map['destinationCidr'] as String),
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
    );
  }
}

