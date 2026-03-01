// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_certificate_managed_ssl_certificate_response_compute_v1.dart';
import 'ssl_certificate_self_managed_ssl_certificate_response_compute_v1.dart';

/// Result data returned by getRegionSslCertificate.
class GetRegionSslCertificateComputeV1Result {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final String certificate;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Expire time of the certificate. RFC3339
  final String expireTime;
  /// Type of the resource. Always compute#sslCertificate for SSL certificates.
  final String kind;
  /// Configuration and status of a managed SSL certificate.
  final SslCertificateManagedSslCertificateResponseComputeV1 managed;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  final String privateKey;
  /// URL of the region where the regional SSL Certificate resides. This field is not applicable to global SSL Certificate.
  final String region;
  /// [Output only] Server-defined URL for the resource.
  final String selfLink;
  /// Configuration and status of a self-managed SSL certificate.
  final SslCertificateSelfManagedSslCertificateResponseComputeV1 selfManaged;
  /// Domains associated with the certificate via Subject Alternative Name.
  final List<String> subjectAlternativeNames;
  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  final String type;

  /// Creates a new [GetRegionSslCertificateComputeV1Result].
  /// [certificate] A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [expireTime] Expire time of the certificate. RFC3339
  /// [kind] Type of the resource. Always compute#sslCertificate for SSL certificates.
  /// [managed] Configuration and status of a managed SSL certificate.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [privateKey] A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  /// [region] URL of the region where the regional SSL Certificate resides. This field is not applicable to global SSL Certificate.
  /// [selfLink] [Output only] Server-defined URL for the resource.
  /// [selfManaged] Configuration and status of a self-managed SSL certificate.
  /// [subjectAlternativeNames] Domains associated with the certificate via Subject Alternative Name.
  /// [type] (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  GetRegionSslCertificateComputeV1Result({
    required this.certificate,
    required this.creationTimestamp,
    required this.description,
    required this.expireTime,
    required this.kind,
    required this.managed,
    required this.name,
    required this.privateKey,
    required this.region,
    required this.selfLink,
    required this.selfManaged,
    required this.subjectAlternativeNames,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'expireTime': expireTime,
      'kind': kind,
      'managed': managed.toMap(),
      'name': name,
      'privateKey': privateKey,
      'region': region,
      'selfLink': selfLink,
      'selfManaged': selfManaged.toMap(),
      'subjectAlternativeNames': subjectAlternativeNames,
      'type': type,
    };
  }

  factory GetRegionSslCertificateComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateComputeV1Result(
      certificate: map['certificate'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      kind: map['kind'] as String,
      managed: SslCertificateManagedSslCertificateResponseComputeV1.fromMap((map['managed'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      privateKey: map['privateKey'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfManaged: SslCertificateSelfManagedSslCertificateResponseComputeV1.fromMap((map['selfManaged'] as Map).cast<String, dynamic>()),
      subjectAlternativeNames: (map['subjectAlternativeNames'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

