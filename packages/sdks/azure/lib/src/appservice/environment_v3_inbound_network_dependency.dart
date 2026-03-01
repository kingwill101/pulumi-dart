// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentV3InboundNetworkDependency {
  /// A short description of the purpose of the network traffic.
  final String? description;
  /// A list of IP addresses that network traffic will originate from in CIDR notation.
  final List<String>? ipAddresses;
  /// The ports that network traffic will arrive to the App Service Environment V3 on.
  final List<String>? ports;

  /// Creates a new [EnvironmentV3InboundNetworkDependency].
  /// [description] A short description of the purpose of the network traffic.
  /// [ipAddresses] A list of IP addresses that network traffic will originate from in CIDR notation.
  /// [ports] The ports that network traffic will arrive to the App Service Environment V3 on.
  EnvironmentV3InboundNetworkDependency({
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
      description: map['description'] == null ? null : map['description'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}

