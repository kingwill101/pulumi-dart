// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationClientRootCertificate {
  /// A name used to uniquely identify this certificate.
  final pulumi.Input<String> name;
  /// The Public Key Data associated with the Certificate.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [VpnServerConfigurationClientRootCertificate].
  /// [name] A name used to uniquely identify this certificate.
  /// [publicCertData] The Public Key Data associated with the Certificate.
  VpnServerConfigurationClientRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory VpnServerConfigurationClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationClientRootCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertData: pulumi.Input.fromValue(map['publicCertData'] as String),
    );
  }
}

