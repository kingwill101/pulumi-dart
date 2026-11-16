// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGatewayConnectionVpcDestination {
  /// CIDR ranges that every address the host resolves to must fall within
  final pulumi.Input<List<String>> allowedIpCidrs;
  /// Host name or IP address that resolves only to private addresses
  final pulumi.Input<String> host;
  /// Destination port
  final pulumi.Input<int> port;

  /// Creates a new [GetActionGatewayConnectionVpcDestination].
  /// [allowedIpCidrs] CIDR ranges that every address the host resolves to must fall within
  /// [host] Host name or IP address that resolves only to private addresses
  /// [port] Destination port
  const GetActionGatewayConnectionVpcDestination({
    required this.allowedIpCidrs,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpCidrs': allowedIpCidrs,
      'host': host,
      'port': port,
    };
  }

  factory GetActionGatewayConnectionVpcDestination.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayConnectionVpcDestination(
      allowedIpCidrs: pulumi.Input.fromValue((map['allowedIpCidrs'] as List).cast<String>()),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
