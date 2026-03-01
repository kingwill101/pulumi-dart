// ignore_for_file: unused_element, unnecessary_cast


class GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one ca
  /// certificate(either root or intermediate cert).
  final String pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one ca
  GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}

