// ignore_for_file: unused_element, unnecessary_cast


/// This message describes a subordinate CA's issuer certificate chain. This wrapper exists for compatibility reasons.
class SubordinateConfigChainResponse {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final List<String> pemCertificates;

  /// Creates a new [SubordinateConfigChainResponse].
  /// [pemCertificates] Expected to be in leaf-to-root order according to RFC 5246.
  SubordinateConfigChainResponse({
    required this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificates': pemCertificates,
    };
  }

  factory SubordinateConfigChainResponse.fromMap(Map<String, dynamic> map) {
    return SubordinateConfigChainResponse(
      pemCertificates: (map['pemCertificates'] as List).cast<String>(),
    );
  }
}

