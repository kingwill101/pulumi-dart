// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_username_download_settings_response_credentials.dart';

/// Settings for Extended Groups username and group download.
class CacheUsernameDownloadSettingsResponse {
  /// Determines if the certificate should be automatically downloaded. This applies to 'caCertificateURI' only if 'requireValidCertificate' is true.
  final pulumi.Input<bool>? autoDownloadCertificate;
  /// The URI of the CA certificate to validate the LDAP secure connection. This field must be populated when 'requireValidCertificate' is set to true.
  final pulumi.Input<String>? caCertificateURI;
  /// When present, these are the credentials for the secure LDAP connection.
  final pulumi.Input<CacheUsernameDownloadSettingsResponseCredentials>? credentials;
  /// Whether or not the LDAP connection should be encrypted.
  final pulumi.Input<bool>? encryptLdapConnection;
  /// Whether or not Extended Groups is enabled.
  final pulumi.Input<bool>? extendedGroups;
  /// The URI of the file containing group information (in /etc/group file format). This field must be populated when 'usernameSource' is set to 'File'.
  final pulumi.Input<String>? groupFileURI;
  /// The base distinguished name for the LDAP domain.
  final pulumi.Input<String>? ldapBaseDN;
  /// The fully qualified domain name or IP address of the LDAP server to use.
  final pulumi.Input<String>? ldapServer;
  /// Determines if the certificates must be validated by a certificate authority. When true, caCertificateURI must be provided.
  final pulumi.Input<bool>? requireValidCertificate;
  /// The URI of the file containing user information (in /etc/passwd file format). This field must be populated when 'usernameSource' is set to 'File'.
  final pulumi.Input<String>? userFileURI;
  /// Indicates whether or not the HPC Cache has performed the username download successfully.
  final pulumi.Input<String> usernameDownloaded;
  /// This setting determines how the cache gets username and group names for clients.
  final pulumi.Input<String>? usernameSource;

  /// Creates a new [CacheUsernameDownloadSettingsResponse].
  /// [autoDownloadCertificate] Determines if the certificate should be automatically downloaded. This applies to 'caCertificateURI' only if 'requireValidCertificate' is true.
  /// [caCertificateURI] The URI of the CA certificate to validate the LDAP secure connection. This field must be populated when 'requireValidCertificate' is set to true.
  /// [credentials] When present, these are the credentials for the secure LDAP connection.
  /// [encryptLdapConnection] Whether or not the LDAP connection should be encrypted.
  /// [extendedGroups] Whether or not Extended Groups is enabled.
  /// [groupFileURI] The URI of the file containing group information (in /etc/group file format). This field must be populated when 'usernameSource' is set to 'File'.
  /// [ldapBaseDN] The base distinguished name for the LDAP domain.
  /// [ldapServer] The fully qualified domain name or IP address of the LDAP server to use.
  /// [requireValidCertificate] Determines if the certificates must be validated by a certificate authority. When true, caCertificateURI must be provided.
  /// [userFileURI] The URI of the file containing user information (in /etc/passwd file format). This field must be populated when 'usernameSource' is set to 'File'.
  /// [usernameDownloaded] Indicates whether or not the HPC Cache has performed the username download successfully.
  /// [usernameSource] This setting determines how the cache gets username and group names for clients.
  const CacheUsernameDownloadSettingsResponse({
    this.autoDownloadCertificate,
    this.caCertificateURI,
    this.credentials,
    this.encryptLdapConnection,
    this.extendedGroups,
    this.groupFileURI,
    this.ldapBaseDN,
    this.ldapServer,
    this.requireValidCertificate,
    this.userFileURI,
    required this.usernameDownloaded,
    this.usernameSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDownloadCertificate': ?autoDownloadCertificate,
      'caCertificateURI': ?caCertificateURI,
      'credentials': ?pulumi.Input.mapOptionalInputValue<CacheUsernameDownloadSettingsResponseCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'encryptLdapConnection': ?encryptLdapConnection,
      'extendedGroups': ?extendedGroups,
      'groupFileURI': ?groupFileURI,
      'ldapBaseDN': ?ldapBaseDN,
      'ldapServer': ?ldapServer,
      'requireValidCertificate': ?requireValidCertificate,
      'userFileURI': ?userFileURI,
      'usernameDownloaded': usernameDownloaded,
      'usernameSource': ?usernameSource,
    };
  }

  factory CacheUsernameDownloadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CacheUsernameDownloadSettingsResponse(
      autoDownloadCertificate: (() { final guardedValue = map['autoDownloadCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      caCertificateURI: (() { final guardedValue = map['caCertificateURI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheUsernameDownloadSettingsResponseCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptLdapConnection: (() { final guardedValue = map['encryptLdapConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedGroups: (() { final guardedValue = map['extendedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupFileURI: (() { final guardedValue = map['groupFileURI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapBaseDN: (() { final guardedValue = map['ldapBaseDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ldapServer: (() { final guardedValue = map['ldapServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireValidCertificate: (() { final guardedValue = map['requireValidCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userFileURI: (() { final guardedValue = map['userFileURI']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernameDownloaded: pulumi.Input.fromValue(map['usernameDownloaded'] as String),
      usernameSource: (() { final guardedValue = map['usernameSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
