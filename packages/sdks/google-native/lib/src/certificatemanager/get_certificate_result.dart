// ignore_for_file: unused_element, unnecessary_cast

import 'managed_certificate_response.dart';
import 'self_managed_certificate_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The creation timestamp of a Certificate.
  final String createTime;
  /// One or more paragraphs of text description of a certificate.
  final String description;
  /// The expiry timestamp of a Certificate.
  final String expireTime;
  /// Set of labels associated with a Certificate.
  final Map<String, String> labels;
  /// If set, contains configuration and state of a managed certificate.
  final ManagedCertificateResponse managed;
  /// A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  final String name;
  /// The PEM-encoded certificate chain.
  final String pemCertificate;
  /// The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been provisioned yet have this field populated with a value of the managed.domains field.
  final List<String> sanDnsnames;
  /// Immutable. The scope of the certificate.
  final String scope;
  /// If set, defines data of a self-managed certificate.
  final SelfManagedCertificateResponse selfManaged;
  /// The last update timestamp of a Certificate.
  final String updateTime;

  /// Creates a new [GetCertificateResult].
  /// [createTime] The creation timestamp of a Certificate.
  /// [description] One or more paragraphs of text description of a certificate.
  /// [expireTime] The expiry timestamp of a Certificate.
  /// [labels] Set of labels associated with a Certificate.
  /// [managed] If set, contains configuration and state of a managed certificate.
  /// [name] A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.
  /// [pemCertificate] The PEM-encoded certificate chain.
  /// [sanDnsnames] The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been provisioned yet have this field populated with a value of the managed.domains field.
  /// [scope] Immutable. The scope of the certificate.
  /// [selfManaged] If set, defines data of a self-managed certificate.
  /// [updateTime] The last update timestamp of a Certificate.
  const GetCertificateResult({
    required this.createTime,
    required this.description,
    required this.expireTime,
    required this.labels,
    required this.managed,
    required this.name,
    required this.pemCertificate,
    required this.sanDnsnames,
    required this.scope,
    required this.selfManaged,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'expireTime': expireTime,
      'labels': labels,
      'managed': managed.toMap(),
      'name': name,
      'pemCertificate': pemCertificate,
      'sanDnsnames': sanDnsnames,
      'scope': scope,
      'selfManaged': selfManaged.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      managed: ManagedCertificateResponse.fromMap((map['managed']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pemCertificate: map['pemCertificate'] as String,
      sanDnsnames: (map['sanDnsnames'] as List).cast<String>(),
      scope: map['scope'] as String,
      selfManaged: SelfManagedCertificateResponse.fromMap((map['selfManaged']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

