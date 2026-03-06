// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one ca
  /// certificate(either root or intermediate cert).
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one ca
  const GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}

