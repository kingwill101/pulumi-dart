// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentV3InboundNetworkDependency {
  /// A short description of the purpose of the network traffic.
  final pulumi.Input<String> description;
  /// A list of IP addresses that network traffic will originate from in CIDR notation.
  final pulumi.Input<List<String>> ipAddresses;
  /// The ports that network traffic will arrive to the App Service Environment V3 on.
  final pulumi.Input<List<String>> ports;

  /// Creates a new [GetEnvironmentV3InboundNetworkDependency].
  /// [description] A short description of the purpose of the network traffic.
  /// [ipAddresses] A list of IP addresses that network traffic will originate from in CIDR notation.
  /// [ports] The ports that network traffic will arrive to the App Service Environment V3 on.
  const GetEnvironmentV3InboundNetworkDependency({
    required this.description,
    required this.ipAddresses,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'ipAddresses': ipAddresses,
      'ports': ports,
    };
  }

  factory GetEnvironmentV3InboundNetworkDependency.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3InboundNetworkDependency(
      description: pulumi.Input.fromValue(map['description'] as String),
      ipAddresses: pulumi.Input.fromValue((map['ipAddresses'] as List).cast<String>()),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<String>()),
    );
  }
}
