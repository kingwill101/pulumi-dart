// ignore_for_file: unused_element, unnecessary_cast

import 'cache_username_download_settings_response_credentials.dart';

/// Settings for Extended Groups username and group download.
class CacheUsernameDownloadSettingsResponse {
  /// Determines if the certificate should be automatically downloaded. This applies to 'caCertificateURI' only if 'requireValidCertificate' is true.
  final bool? autoDownloadCertificate;
  /// The URI of the CA certificate to validate the LDAP secure connection. This field must be populated when 'requireValidCertificate' is set to true.
  final String? caCertificateURI;
  /// When present, these are the credentials for the secure LDAP connection.
  final CacheUsernameDownloadSettingsResponseCredentials? credentials;
  /// Whether or not the LDAP connection should be encrypted.
  final bool? encryptLdapConnection;
  /// Whether or not Extended Groups is enabled.
  final bool? extendedGroups;
  /// The URI of the file containing group information (in /etc/group file format). This field must be populated when 'usernameSource' is set to 'File'.
  final String? groupFileURI;
  /// The base distinguished name for the LDAP domain.
  final String? ldapBaseDN;
  /// The fully qualified domain name or IP address of the LDAP server to use.
  final String? ldapServer;
  /// Determines if the certificates must be validated by a certificate authority. When true, caCertificateURI must be provided.
  final bool? requireValidCertificate;
  /// The URI of the file containing user information (in /etc/passwd file format). This field must be populated when 'usernameSource' is set to 'File'.
  final String? userFileURI;
  /// Indicates whether or not the HPC Cache has performed the username download successfully.
  final String usernameDownloaded;
  /// This setting determines how the cache gets username and group names for clients.
  final String? usernameSource;

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
  CacheUsernameDownloadSettingsResponse({
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
      'credentials': ?credentials == null ? null : credentials!.toMap(),
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
      autoDownloadCertificate: map['autoDownloadCertificate'] == null ? null : map['autoDownloadCertificate'] as bool,
      caCertificateURI: map['caCertificateURI'] == null ? null : map['caCertificateURI'] as String,
      credentials: map['credentials'] == null ? null : CacheUsernameDownloadSettingsResponseCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      encryptLdapConnection: map['encryptLdapConnection'] == null ? null : map['encryptLdapConnection'] as bool,
      extendedGroups: map['extendedGroups'] == null ? null : map['extendedGroups'] as bool,
      groupFileURI: map['groupFileURI'] == null ? null : map['groupFileURI'] as String,
      ldapBaseDN: map['ldapBaseDN'] == null ? null : map['ldapBaseDN'] as String,
      ldapServer: map['ldapServer'] == null ? null : map['ldapServer'] as String,
      requireValidCertificate: map['requireValidCertificate'] == null ? null : map['requireValidCertificate'] as bool,
      userFileURI: map['userFileURI'] == null ? null : map['userFileURI'] as String,
      usernameDownloaded: map['usernameDownloaded'] as String,
      usernameSource: map['usernameSource'] == null ? null : map['usernameSource'] as String,
    );
  }
}

