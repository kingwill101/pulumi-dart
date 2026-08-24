// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessMtlsCertificatesResult {
  /// The hostnames of the applications that will use this certificate.
  final pulumi.Input<List<String>> associatedHostnames;
  final pulumi.Input<String> expiresOn;
  /// The MD5 fingerprint of the certificate.
  final pulumi.Input<String> fingerprint;
  /// The ID of the application that will use this certificate.
  final pulumi.Input<String> id;
  /// The name of the certificate.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustAccessMtlsCertificatesResult].
  /// [associatedHostnames] The hostnames of the applications that will use this certificate.
  /// [expiresOn] Required.
  /// [fingerprint] The MD5 fingerprint of the certificate.
  /// [id] The ID of the application that will use this certificate.
  /// [name] The name of the certificate.
  const GetZeroTrustAccessMtlsCertificatesResult({
    required this.associatedHostnames,
    required this.expiresOn,
    required this.fingerprint,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedHostnames': associatedHostnames,
      'expiresOn': expiresOn,
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustAccessMtlsCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessMtlsCertificatesResult(
      associatedHostnames: pulumi.Input.fromValue((map['associatedHostnames'] as List).cast<String>()),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
