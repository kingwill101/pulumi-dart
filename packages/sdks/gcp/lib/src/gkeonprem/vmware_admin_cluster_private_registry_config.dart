// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterPrivateRegistryConfig {
  /// The registry address.
  final pulumi.Input<String>? address;

  /// The CA certificate public key for private registry.
  final pulumi.Input<String>? caCert;

  /// Creates a new [VmwareAdminClusterPrivateRegistryConfig].
  /// [address] The registry address.
  /// [caCert] The CA certificate public key for private registry.
  VmwareAdminClusterPrivateRegistryConfig({this.address, this.caCert});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'caCert': ?caCert};
  }

  factory VmwareAdminClusterPrivateRegistryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareAdminClusterPrivateRegistryConfig(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caCert: (() {
        final guardedValue = map['caCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
