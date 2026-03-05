// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP traffic information.
class IPTrafficResponse {
  /// List of destination IP addresses of the traffic..
  final pulumi.Input<List<String>> destinationIps;
  /// The destination ports of the traffic.
  final pulumi.Input<List<String>> destinationPorts;
  final pulumi.Input<List<String>> protocols;
  /// List of source IP addresses of the traffic..
  final pulumi.Input<List<String>> sourceIps;
  /// The source ports of the traffic.
  final pulumi.Input<List<String>> sourcePorts;

  /// Creates a new [IPTrafficResponse].
  /// [destinationIps] List of destination IP addresses of the traffic..
  /// [destinationPorts] The destination ports of the traffic.
  /// [protocols] Required.
  /// [sourceIps] List of source IP addresses of the traffic..
  /// [sourcePorts] The source ports of the traffic.
  IPTrafficResponse({
    required this.destinationIps,
    required this.destinationPorts,
    required this.protocols,
    required this.sourceIps,
    required this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIps': destinationIps,
      'destinationPorts': destinationPorts,
      'protocols': protocols,
      'sourceIps': sourceIps,
      'sourcePorts': sourcePorts,
    };
  }

  factory IPTrafficResponse.fromMap(Map<String, dynamic> map) {
    return IPTrafficResponse(
      destinationIps: pulumi.Input.fromValue((map['destinationIps'] as List).cast<String>()),
      destinationPorts: pulumi.Input.fromValue((map['destinationPorts'] as List).cast<String>()),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      sourceIps: pulumi.Input.fromValue((map['sourceIps'] as List).cast<String>()),
      sourcePorts: pulumi.Input.fromValue((map['sourcePorts'] as List).cast<String>()),
    );
  }
}

