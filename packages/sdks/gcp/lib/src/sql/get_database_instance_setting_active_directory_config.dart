// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingActiveDirectoryConfig {
  /// The secret manager key storing the administrator credential. (e.g., projects/{project}/secrets/{secret}).
  final pulumi.Input<String> adminCredentialSecretName;
  /// Domain controller IPv4 addresses used to bootstrap Active Directory.
  final pulumi.Input<List<String>> dnsServers;
  /// Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  final pulumi.Input<String> domain;
  /// The mode of the Active Directory configuration. Can be MANAGED_ACTIVE_DIRECTORY or CUSTOMER_MANAGED_ACTIVE_DIRECTORY.
  final pulumi.Input<String> mode;
  /// The organizational unit distinguished name. This is the full hierarchical path to the organizational unit.
  final pulumi.Input<String> organizationalUnit;

  /// Creates a new [GetDatabaseInstanceSettingActiveDirectoryConfig].
  /// [adminCredentialSecretName] The secret manager key storing the administrator credential. (e.g., projects/{project}/secrets/{secret}).
  /// [dnsServers] Domain controller IPv4 addresses used to bootstrap Active Directory.
  /// [domain] Domain name of the Active Directory for SQL Server (e.g., mydomain.com).
  /// [mode] The mode of the Active Directory configuration. Can be MANAGED_ACTIVE_DIRECTORY or CUSTOMER_MANAGED_ACTIVE_DIRECTORY.
  /// [organizationalUnit] The organizational unit distinguished name. This is the full hierarchical path to the organizational unit.
  const GetDatabaseInstanceSettingActiveDirectoryConfig({
    required this.adminCredentialSecretName,
    required this.dnsServers,
    required this.domain,
    required this.mode,
    required this.organizationalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCredentialSecretName': adminCredentialSecretName,
      'dnsServers': dnsServers,
      'domain': domain,
      'mode': mode,
      'organizationalUnit': organizationalUnit,
    };
  }

  factory GetDatabaseInstanceSettingActiveDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingActiveDirectoryConfig(
      adminCredentialSecretName: pulumi.Input.fromValue(map['adminCredentialSecretName'] as String),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      organizationalUnit: pulumi.Input.fromValue(map['organizationalUnit'] as String),
    );
  }
}
