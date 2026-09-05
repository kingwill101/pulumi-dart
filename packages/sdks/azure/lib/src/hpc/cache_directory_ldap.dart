// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_directory_ldap_bind.dart';

class CacheDirectoryLdap {
  /// The base distinguished name (DN) for the LDAP domain.
  final pulumi.Input<String> baseDn;
  /// A `bind` block as defined above.
  final pulumi.Input<CacheDirectoryLdapBind?>? bind;
  /// The URI of the CA certificate to validate the LDAP secure connection.
  final pulumi.Input<String?>? certificateValidationUri;
  /// Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificateValidationUri` is provided.
  final pulumi.Input<bool?>? downloadCertificateAutomatically;
  /// Whether the LDAP connection should be encrypted?
  final pulumi.Input<bool?>? encrypted;
  /// The FQDN or IP address of the LDAP server.
  final pulumi.Input<String> server;

  /// Creates a new [CacheDirectoryLdap].
  /// [baseDn] The base distinguished name (DN) for the LDAP domain.
  /// [bind] A `bind` block as defined above.
  /// [certificateValidationUri] The URI of the CA certificate to validate the LDAP secure connection.
  /// [downloadCertificateAutomatically] Whether the certificate should be automatically downloaded. This can be set to `true` only when `certificateValidationUri` is provided.
  /// [encrypted] Whether the LDAP connection should be encrypted?
  /// [server] The FQDN or IP address of the LDAP server.
  const CacheDirectoryLdap({
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
      baseDn: pulumi.Input.fromValue(map['baseDn'] as String),
      bind: (() { final guardedValue = map['bind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDirectoryLdapBind.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificateValidationUri: (() { final guardedValue = map['certificateValidationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downloadCertificateAutomatically: (() { final guardedValue = map['downloadCertificateAutomatically']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
