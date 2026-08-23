// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
class TcpRouteRouteMatchResponse {
  /// Must be specified in the CIDR range format. A CIDR range consists of an IP Address and a prefix length to construct the subnet mask. By default, the prefix length is 32 (i.e. matches a single IP address). Only IPV4 addresses are supported. Examples: "10.0.0.1" - matches against this exact IP address. "10.0.0.0/8" - matches against any IP address within the 10.0.0.0 subnet and 255.255.255.0 mask. "0.0.0.0/0" - matches against any IP address'.
  final pulumi.Input<String> address;
  /// Specifies the destination port to match against.
  final pulumi.Input<String> port;

  /// Creates a new [TcpRouteRouteMatchResponse].
  /// [address] Must be specified in the CIDR range format. A CIDR range consists of an IP Address and a prefix length to construct the subnet mask. By default, the prefix length is 32 (i.e. matches a single IP address). Only IPV4 addresses are supported. Examples: "10.0.0.1" - matches against this exact IP address. "10.0.0.0/8" - matches against any IP address within the 10.0.0.0 subnet and 255.255.255.0 mask. "0.0.0.0/0" - matches against any IP address'.
  /// [port] Specifies the destination port to match against.
  const TcpRouteRouteMatchResponse({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory TcpRouteRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteMatchResponse(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
    );
  }
}
