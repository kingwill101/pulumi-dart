// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentV3InboundNetworkDependency {
  /// A short description of the purpose of the network traffic.
  final pulumi.Input<String>? description;
  /// A list of IP addresses that network traffic will originate from in CIDR notation.
  final pulumi.Input<List<String>>? ipAddresses;
  /// The ports that network traffic will arrive to the App Service Environment V3 on.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [EnvironmentV3InboundNetworkDependency].
  /// [description] A short description of the purpose of the network traffic.
  /// [ipAddresses] A list of IP addresses that network traffic will originate from in CIDR notation.
  /// [ports] The ports that network traffic will arrive to the App Service Environment V3 on.
  const EnvironmentV3InboundNetworkDependency({
    this.description,
    this.ipAddresses,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipAddresses': ?ipAddresses,
      'ports': ?ports,
    };
  }

  factory EnvironmentV3InboundNetworkDependency.fromMap(Map<String, dynamic> map) {
    return EnvironmentV3InboundNetworkDependency(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

