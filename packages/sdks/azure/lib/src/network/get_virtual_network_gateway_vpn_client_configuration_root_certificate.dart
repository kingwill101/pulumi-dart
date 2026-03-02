// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate {
  /// Specifies the name of the Virtual Network Gateway.
  final pulumi.Input<String> name;
  /// The public certificate of the root certificate
  /// authority. The certificate must be provided in Base-64 encoded X.509 format
  /// (PEM).
  final pulumi.Input<String> publicCertData;

  /// Creates a new [GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate].
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [publicCertData] The public certificate of the root certificate
  GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate(
      name: (map['name'] as String).input(),
      publicCertData: (map['publicCertData'] as String).input(),
    );
  }
}

