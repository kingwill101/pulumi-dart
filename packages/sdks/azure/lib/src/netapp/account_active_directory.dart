// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountActiveDirectory {
  /// If enabled, AES encryption will be enabled for SMB communication. Defaults to `false`.
  final pulumi.Input<bool>? aesEncryptionEnabled;

  /// A list of DNS server IP addresses for the Active Directory domain. Only allows `IPv4` address.
  final pulumi.Input<List<String>> dnsServers;

  /// The name of the Active Directory domain.
  final pulumi.Input<String> domain;

  /// Name of the active directory machine.
  final pulumi.Input<String>? kerberosAdName;

  /// kdc server IP addresses for the active directory machine.
  ///
  /// &gt; **Note:** If you plan on using **Kerberos** volumes, both `ad_name` and `kdc_ip` are required in order to create the volume.
  final pulumi.Input<String>? kerberosKdcIp;

  /// Specifies whether or not the LDAP traffic needs to be secured via TLS. Defaults to `false`.
  final pulumi.Input<bool>? ldapOverTlsEnabled;

  /// Specifies whether or not the LDAP traffic needs to be signed. Defaults to `false`.
  final pulumi.Input<bool>? ldapSigningEnabled;

  /// If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes. Defaults to `false`.
  final pulumi.Input<bool>? localNfsUsersWithLdapAllowed;

  /// The Organizational Unit (OU) within Active Directory where machines will be created. If blank, defaults to `CN=Computers`.
  final pulumi.Input<String>? organizationalUnit;

  /// The password associated with the `username`.
  final pulumi.Input<String> password;

  /// When LDAP over SSL/TLS is enabled, the LDAP client is required to have a *base64 encoded Active Directory Certificate Service's self-signed root CA certificate*, this optional parameter is used only for dual protocol with LDAP user-mapping volumes. Required if `ldap_over_tls_enabled` is set to `true`.
  final pulumi.Input<String>? serverRootCaCertificate;

  /// The Active Directory site the service will limit Domain Controller discovery to. If blank, defaults to `Default-First-Site-Name`.
  final pulumi.Input<String>? siteName;

  /// The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
  final pulumi.Input<String> smbServerName;

  /// The Username of Active Directory Domain Administrator.
  final pulumi.Input<String> username;

  /// Creates a new [AccountActiveDirectory].
  /// [aesEncryptionEnabled] If enabled, AES encryption will be enabled for SMB communication. Defaults to `false`.
  /// [dnsServers] A list of DNS server IP addresses for the Active Directory domain. Only allows `IPv4` address.
  /// [domain] The name of the Active Directory domain.
  /// [kerberosAdName] Name of the active directory machine.
  /// [kerberosKdcIp] kdc server IP addresses for the active directory machine.
  /// [ldapOverTlsEnabled] Specifies whether or not the LDAP traffic needs to be secured via TLS. Defaults to `false`.
  /// [ldapSigningEnabled] Specifies whether or not the LDAP traffic needs to be signed. Defaults to `false`.
  /// [localNfsUsersWithLdapAllowed] If enabled, NFS client local users can also (in addition to LDAP users) access the NFS volumes. Defaults to `false`.
  /// [organizationalUnit] The Organizational Unit (OU) within Active Directory where machines will be created. If blank, defaults to `CN=Computers`.
  /// [password] The password associated with the `username`.
  /// [serverRootCaCertificate] When LDAP over SSL/TLS is enabled, the LDAP client is required to have a *base64 encoded Active Directory Certificate Service's self-signed root CA certificate*, this optional parameter is used only for dual protocol with LDAP user-mapping volumes. Required if `ldap_over_tls_enabled` is set to `true`.
  /// [siteName] The Active Directory site the service will limit Domain Controller discovery to. If blank, defaults to `Default-First-Site-Name`.
  /// [smbServerName] The NetBIOS name which should be used for the NetApp SMB Server, which will be registered as a computer account in the AD and used to mount volumes.
  /// [username] The Username of Active Directory Domain Administrator.
  AccountActiveDirectory({
    this.aesEncryptionEnabled,
    required this.dnsServers,
    required this.domain,
    this.kerberosAdName,
    this.kerberosKdcIp,
    this.ldapOverTlsEnabled,
    this.ldapSigningEnabled,
    this.localNfsUsersWithLdapAllowed,
    this.organizationalUnit,
    required this.password,
    this.serverRootCaCertificate,
    this.siteName,
    required this.smbServerName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aesEncryptionEnabled': ?aesEncryptionEnabled,
      'dnsServers': dnsServers,
      'domain': domain,
      'kerberosAdName': ?kerberosAdName,
      'kerberosKdcIp': ?kerberosKdcIp,
      'ldapOverTlsEnabled': ?ldapOverTlsEnabled,
      'ldapSigningEnabled': ?ldapSigningEnabled,
      'localNfsUsersWithLdapAllowed': ?localNfsUsersWithLdapAllowed,
      'organizationalUnit': ?organizationalUnit,
      'password': password,
      'serverRootCaCertificate': ?serverRootCaCertificate,
      'siteName': ?siteName,
      'smbServerName': smbServerName,
      'username': username,
    };
  }

  factory AccountActiveDirectory.fromMap(Map<String, dynamic> map) {
    return AccountActiveDirectory(
      aesEncryptionEnabled: (() {
        final guardedValue = map['aesEncryptionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dnsServers: pulumi.Input.fromValue(
        (map['dnsServers'] as List).cast<String>(),
      ),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      kerberosAdName: (() {
        final guardedValue = map['kerberosAdName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kerberosKdcIp: (() {
        final guardedValue = map['kerberosKdcIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ldapOverTlsEnabled: (() {
        final guardedValue = map['ldapOverTlsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ldapSigningEnabled: (() {
        final guardedValue = map['ldapSigningEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      localNfsUsersWithLdapAllowed: (() {
        final guardedValue = map['localNfsUsersWithLdapAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      organizationalUnit: (() {
        final guardedValue = map['organizationalUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      serverRootCaCertificate: (() {
        final guardedValue = map['serverRootCaCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteName: (() {
        final guardedValue = map['siteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smbServerName: pulumi.Input.fromValue(map['smbServerName'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
