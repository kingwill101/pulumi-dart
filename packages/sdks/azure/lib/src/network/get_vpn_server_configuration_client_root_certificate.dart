// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnServerConfigurationClientRootCertificate {
  /// The Name of the VPN Server Configuration.
  final pulumi.Input<String> name;
  /// The Public Key Data associated with the Certificate.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [GetVpnServerConfigurationClientRootCertificate].
  /// [name] The Name of the VPN Server Configuration.
  /// [publicCertData] The Public Key Data associated with the Certificate.
  const GetVpnServerConfigurationClientRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetVpnServerConfigurationClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationClientRootCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertData: pulumi.Input.fromValue(map['publicCertData'] as String),
    );
  }
}
