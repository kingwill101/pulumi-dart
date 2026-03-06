// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateCertificatePolicyIssuerParameter {
  /// Specifies the name of the Key Vault Certificate.
  final pulumi.Input<String> name;

  /// Creates a new [GetCertificateCertificatePolicyIssuerParameter].
  /// [name] Specifies the name of the Key Vault Certificate.
  const GetCertificateCertificatePolicyIssuerParameter({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCertificateCertificatePolicyIssuerParameter.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificatePolicyIssuerParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

