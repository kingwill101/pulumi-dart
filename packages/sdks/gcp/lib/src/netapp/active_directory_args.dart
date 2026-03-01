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
    pulumi.Output<List<String>>? administrators,
    pulumi.Output<bool>? aesEncryption,
    pulumi.Output<List<String>>? backupOperators,
    pulumi.Output<String>? description,
    required pulumi.Output<String> dns,
    required pulumi.Output<String> domain,
    pulumi.Output<bool>? encryptDcConnections,
    pulumi.Output<String>? kdcHostname,
    pulumi.Output<String>? kdcIp,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<bool>? ldapSigning,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> netBiosPrefix,
    pulumi.Output<bool>? nfsUsersWithLdap,
    pulumi.Output<String>? organizationalUnit,
    required pulumi.Output<String> password,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? securityOperators,
    pulumi.Output<String>? site,
    required pulumi.Output<String> username,
  }) :
      administrators = pulumi.Input.asOptionalInput<List<String>>(administrators),
      aesEncryption = pulumi.Input.asOptionalInput<bool>(aesEncryption),
      backupOperators = pulumi.Input.asOptionalInput<List<String>>(backupOperators),
      description = pulumi.Input.asOptionalInput<String>(description),
      dns = pulumi.Input.asInput<String>(dns),
      domain = pulumi.Input.asInput<String>(domain),
      encryptDcConnections = pulumi.Input.asOptionalInput<bool>(encryptDcConnections),
      kdcHostname = pulumi.Input.asOptionalInput<String>(kdcHostname),
      kdcIp = pulumi.Input.asOptionalInput<String>(kdcIp),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      ldapSigning = pulumi.Input.asOptionalInput<bool>(ldapSigning),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      netBiosPrefix = pulumi.Input.asInput<String>(netBiosPrefix),
      nfsUsersWithLdap = pulumi.Input.asOptionalInput<bool>(nfsUsersWithLdap),
      organizationalUnit = pulumi.Input.asOptionalInput<String>(organizationalUnit),
      password = pulumi.Input.asInput<String>(password),
      project = pulumi.Input.asOptionalInput<String>(project),
      securityOperators = pulumi.Input.asOptionalInput<List<String>>(securityOperators),
      site = pulumi.Input.asOptionalInput<String>(site),
      username = pulumi.Input.asInput<String>(username);

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
      administrators: map['administrators'] == null ? null : pulumi.Output.create<List<String>>((map['administrators'] as List).cast<String>()),
      aesEncryption: map['aesEncryption'] == null ? null : pulumi.Output.create<bool>(map['aesEncryption'] as bool),
      backupOperators: map['backupOperators'] == null ? null : pulumi.Output.create<List<String>>((map['backupOperators'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dns: pulumi.Output.create<String>(map['dns'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      encryptDcConnections: map['encryptDcConnections'] == null ? null : pulumi.Output.create<bool>(map['encryptDcConnections'] as bool),
      kdcHostname: map['kdcHostname'] == null ? null : pulumi.Output.create<String>(map['kdcHostname'] as String),
      kdcIp: map['kdcIp'] == null ? null : pulumi.Output.create<String>(map['kdcIp'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      ldapSigning: map['ldapSigning'] == null ? null : pulumi.Output.create<bool>(map['ldapSigning'] as bool),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      netBiosPrefix: pulumi.Output.create<String>(map['netBiosPrefix'] as String),
      nfsUsersWithLdap: map['nfsUsersWithLdap'] == null ? null : pulumi.Output.create<bool>(map['nfsUsersWithLdap'] as bool),
      organizationalUnit: map['organizationalUnit'] == null ? null : pulumi.Output.create<String>(map['organizationalUnit'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      securityOperators: map['securityOperators'] == null ? null : pulumi.Output.create<List<String>>((map['securityOperators'] as List).cast<String>()),
      site: map['site'] == null ? null : pulumi.Output.create<String>(map['site'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

