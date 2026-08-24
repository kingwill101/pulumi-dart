// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMtlsCertificateAssociations.
class GetMtlsCertificateAssociationsResult {
  /// Identifier.
  final String? accountId;
  /// Identifier.
  final String? mtlsCertificateId;
  /// The service using the certificate.
  final String? service;
  /// Certificate deployment status for the given service.
  final String? status;

  /// Creates a new [GetMtlsCertificateAssociationsResult].
  /// [accountId] Identifier.
  /// [mtlsCertificateId] Identifier.
  /// [service] The service using the certificate.
  /// [status] Certificate deployment status for the given service.
  const GetMtlsCertificateAssociationsResult({
    this.accountId,
    this.mtlsCertificateId,
    this.service,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'mtlsCertificateId': ?mtlsCertificateId,
      'service': ?service,
      'status': ?status,
    };
  }

  factory GetMtlsCertificateAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificateAssociationsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
