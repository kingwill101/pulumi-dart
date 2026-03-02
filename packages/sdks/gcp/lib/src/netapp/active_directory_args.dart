// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_active_directory_active_directory_args_doc}
/// The set of arguments for ActiveDirectory.
/// {@endtemplate}
/// {@macro pulumi_netapp_active_directory_active_directory_args_doc}
class ActiveDirectoryArgs {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  final pulumi.Input<List<String>>? administrators;
  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  final pulumi.Input<bool>? aesEncryption;
  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  final pulumi.Input<List<String>>? backupOperators;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  final pulumi.Input<String> dns;
  /// Fully qualified domain name for the Active Directory domain.
  final pulumi.Input<String> domain;
  /// If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  final pulumi.Input<bool>? encryptDcConnections;
  /// Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  final pulumi.Input<String>? kdcHostname;
  /// IP address of the Active Directory server used as Kerberos Key Distribution Center.
  final pulumi.Input<String>? kdcIp;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies whether or not the LDAP traffic needs to be signed.
  final pulumi.Input<bool>? ldapSigning;
  /// Name of the region for the policy to apply to.
  final pulumi.Input<String> location;
  /// The resource name of the Active Directory pool. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  final pulumi.Input<String> netBiosPrefix;
  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  final pulumi.Input<bool>? nfsUsersWithLdap;
  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  final pulumi.Input<String>? organizationalUnit;
  final pulumi.Input<String> password;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  final pulumi.Input<List<String>>? securityOperators;
  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  final pulumi.Input<String>? site;
  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  final pulumi.Input<String> username;

  /// Creates a new [ActiveDirectoryArgs].
  /// [administrators] Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  /// [aesEncryption] Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  /// [backupOperators] Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  /// [description] An optional description of this resource.
  /// [dns] Comma separated list of DNS server IP addresses for the Active Directory domain.
  /// [domain] Fully qualified domain name for the Active Directory domain.
  /// [encryptDcConnections] If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  /// [kdcHostname] Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  /// [kdcIp] IP address of the Active Directory server used as Kerberos Key Distribution Center.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [ldapSigning] Specifies whether or not the LDAP traffic needs to be signed.
  /// [location] Name of the region for the policy to apply to.
  /// [name] The resource name of the Active Directory pool. Needs to be unique per location.
  /// [netBiosPrefix] NetBIOS name prefix of the server to be created.
  /// [nfsUsersWithLdap] Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// [organizationalUnit] Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// [password] Required.
  /// [project] The ID of the project in which the resource belongs.
  /// [securityOperators] Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  /// [site] Specifies an Active Directory site to manage domain controller selection.
  /// [username] Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  ActiveDirectoryArgs({
    this.administrators,
    this.aesEncryption,
    this.backupOperators,
    this.description,
    required this.dns,
    required this.domain,
    this.encryptDcConnections,
    this.kdcHostname,
    this.kdcIp,
    this.labels,
    this.ldapSigning,
    required this.location,
    this.name,
    required this.netBiosPrefix,
    this.nfsUsersWithLdap,
    this.organizationalUnit,
    required this.password,
    this.project,
    this.securityOperators,
    this.site,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': ?administrators,
      'aesEncryption': ?aesEncryption,
      'backupOperators': ?backupOperators,
      'description': ?description,
      'dns': dns,
      'domain': domain,
      'encryptDcConnections': ?encryptDcConnections,
      'kdcHostname': ?kdcHostname,
      'kdcIp': ?kdcIp,
      'labels': ?labels,
      'ldapSigning': ?ldapSigning,
      'location': location,
      'name': ?name,
      'netBiosPrefix': netBiosPrefix,
      'nfsUsersWithLdap': ?nfsUsersWithLdap,
      'organizationalUnit': ?organizationalUnit,
      'password': password,
      'project': ?project,
      'securityOperators': ?securityOperators,
      'site': ?site,
      'username': username,
    };
  }

  factory ActiveDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryArgs(
      administrators: map['administrators'] == null ? null : ((map['administrators'] as List).cast<String>()).input(),
      aesEncryption: map['aesEncryption'] == null ? null : (map['aesEncryption'] as bool).input(),
      backupOperators: map['backupOperators'] == null ? null : ((map['backupOperators'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dns: (map['dns'] as String).input(),
      domain: (map['domain'] as String).input(),
      encryptDcConnections: map['encryptDcConnections'] == null ? null : (map['encryptDcConnections'] as bool).input(),
      kdcHostname: map['kdcHostname'] == null ? null : (map['kdcHostname'] as String).input(),
      kdcIp: map['kdcIp'] == null ? null : (map['kdcIp'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      ldapSigning: map['ldapSigning'] == null ? null : (map['ldapSigning'] as bool).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      netBiosPrefix: (map['netBiosPrefix'] as String).input(),
      nfsUsersWithLdap: map['nfsUsersWithLdap'] == null ? null : (map['nfsUsersWithLdap'] as bool).input(),
      organizationalUnit: map['organizationalUnit'] == null ? null : (map['organizationalUnit'] as String).input(),
      password: (map['password'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      securityOperators: map['securityOperators'] == null ? null : ((map['securityOperators'] as List).cast<String>()).input(),
      site: map['site'] == null ? null : (map['site'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

