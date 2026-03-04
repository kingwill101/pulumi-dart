// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration {
  /// The domain name label for the DNS settings.
  final pulumi.Input<String> domainNameLabel;

  /// The idle timeout in minutes. This value must be between 4 and 30.
  final pulumi.Input<int> idleTimeout;

  /// The name of the public IP address configuration
  final pulumi.Input<String> name;

  /// Creates a new [ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration].
  /// [domainNameLabel] The domain name label for the DNS settings.
  /// [idleTimeout] The idle timeout in minutes. This value must be between 4 and 30.
  /// [name] The name of the public IP address configuration
  ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration({
    required this.domainNameLabel,
    required this.idleTimeout,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': domainNameLabel,
      'idleTimeout': idleTimeout,
      'name': name,
    };
  }

  factory ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration(
      domainNameLabel: pulumi.Input.fromValue(map['domainNameLabel'] as String),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
