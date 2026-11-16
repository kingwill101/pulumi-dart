// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayConnectionVpcDestination {
  /// CIDR ranges that every address the host resolves to must fall within.
  final pulumi.Input<List<String>?>? allowedIpCidrs;
  /// A host name or IP address that resolves only to private addresses.
  final pulumi.Input<String> host;
  /// The destination port.
  final pulumi.Input<int> port;

  /// Creates a new [ActionGatewayConnectionVpcDestination].
  /// [allowedIpCidrs] CIDR ranges that every address the host resolves to must fall within.
  /// [host] A host name or IP address that resolves only to private addresses.
  /// [port] The destination port.
  const ActionGatewayConnectionVpcDestination({
    this.allowedIpCidrs,
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpCidrs': ?allowedIpCidrs,
      'host': host,
      'port': port,
    };
  }

  factory ActionGatewayConnectionVpcDestination.fromMap(Map<String, dynamic> map) {
    return ActionGatewayConnectionVpcDestination(
      allowedIpCidrs: (() { final guardedValue = map['allowedIpCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
