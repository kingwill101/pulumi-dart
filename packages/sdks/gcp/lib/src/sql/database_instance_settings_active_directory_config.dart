// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsActiveDirectoryConfig {
  /// The secret manager key storing the administrator credential. (e.g., `projects/{project}/secrets/{secret}`).
  final pulumi.Input<String?>? adminCredentialSecretName;
  /// Domain controller IPv4 addresses used to bootstrap Active Directory.
  final pulumi.Input<List<String>?>? dnsServers;
  /// The domain name for the active directory (e.g., mydomain.com). Can only be used with SQL Server.
  final pulumi.Input<String> domain;
  /// The mode of the Active Directory configuration. Can be `MANAGED_ACTIVE_DIRECTORY` or `CUSTOMER_MANAGED_ACTIVE_DIRECTORY`.
  final pulumi.Input<String?>? mode;
  /// The organizational unit distinguished name. This is the full hierarchical path to the organizational unit.
  final pulumi.Input<String?>? organizationalUnit;

  /// Creates a new [DatabaseInstanceSettingsActiveDirectoryConfig].
  /// [adminCredentialSecretName] The secret manager key storing the administrator credential. (e.g., `projects/{project}/secrets/{secret}`).
  /// [dnsServers] Domain controller IPv4 addresses used to bootstrap Active Directory.
  /// [domain] The domain name for the active directory (e.g., mydomain.com). Can only be used with SQL Server.
  /// [mode] The mode of the Active Directory configuration. Can be `MANAGED_ACTIVE_DIRECTORY` or `CUSTOMER_MANAGED_ACTIVE_DIRECTORY`.
  /// [organizationalUnit] The organizational unit distinguished name. This is the full hierarchical path to the organizational unit.
  const DatabaseInstanceSettingsActiveDirectoryConfig({
    this.adminCredentialSecretName,
    this.dnsServers,
    required this.domain,
    this.mode,
    this.organizationalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentialSecretName': ?adminCredentialSecretName,
      'dnsServers': ?dnsServers,
      'domain': domain,
      'mode': ?mode,
      'organizationalUnit': ?organizationalUnit,
    };
  }

  factory DatabaseInstanceSettingsActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsActiveDirectoryConfig(
      adminCredentialSecretName: (() { final guardedValue = map['adminCredentialSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
