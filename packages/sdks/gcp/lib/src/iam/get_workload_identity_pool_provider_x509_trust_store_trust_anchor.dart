// ignore_for_file: unused_element, unnecessary_cast


class GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor {
  /// PEM certificate of the PKI used for validation. Must only contain one
  /// ca certificate(either root or intermediate cert).
  final String pemCertificate;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor].
  /// [pemCertificate] PEM certificate of the PKI used for validation. Must only contain one
  GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor(
      pemCertificate: map['pemCertificate'] as String,
    );
  }
}

