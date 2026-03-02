// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_directory_ldap_bind.dart';

class CacheDirectoryLdap {
  /// The base distinguished name (DN) for the LDAP domain.
  final pulumi.Input<String> baseDn;
  /// A `bind` block as defined above.
  final pulumi.Input<CacheDirectoryLdapBind>? bind;
  /// The URI of the CA certificate to validate the LDAP secure connection.
  final pulumi.Input<String>? certificateValidationUri;
  /// Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificate_validation_uri` is provided.
  final pulumi.Input<bool>? downloadCertificateAutomatically;
  /// Whether the LDAP connection should be encrypted?
  final pulumi.Input<bool>? encrypted;
  /// The FQDN or IP address of the LDAP server.
  final pulumi.Input<String> server;

  /// Creates a new [CacheDirectoryLdap].
  /// [baseDn] The base distinguished name (DN) for the LDAP domain.
  /// [bind] A `bind` block as defined above.
  /// [certificateValidationUri] The URI of the CA certificate to validate the LDAP secure connection.
  /// [downloadCertificateAutomatically] Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificate_validation_uri` is provided.
  /// [encrypted] Whether the LDAP connection should be encrypted?
  /// [server] The FQDN or IP address of the LDAP server.
  CacheDirectoryLdap({
    required this.baseDn,
    this.bind,
    this.certificateValidationUri,
    this.downloadCertificateAutomatically,
    this.encrypted,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseDn': baseDn,
      'bind': ?pulumi.Input.mapOptionalInputValue<CacheDirectoryLdapBind, Map<String, dynamic>>(bind, (value) => value.toMap()),
      'certificateValidationUri': ?certificateValidationUri,
      'downloadCertificateAutomatically': ?downloadCertificateAutomatically,
      'encrypted': ?encrypted,
      'server': server,
    };
  }

  factory CacheDirectoryLdap.fromMap(Map<String, dynamic> map) {
    return CacheDirectoryLdap(
      baseDn: (map['baseDn'] as String).input(),
      bind: map['bind'] == null ? null : (CacheDirectoryLdapBind.fromMap((map['bind']! as Map).cast<String, dynamic>())).input(),
      certificateValidationUri: map['certificateValidationUri'] == null ? null : (map['certificateValidationUri']! as String).input(),
      downloadCertificateAutomatically: map['downloadCertificateAutomatically'] == null ? null : (map['downloadCertificateAutomatically']! as bool).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      server: (map['server'] as String).input(),
    );
  }
}

