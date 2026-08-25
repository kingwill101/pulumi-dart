// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_active_directory_active_directory_args_doc}
/// The set of arguments for ActiveDirectory.
/// {@endtemplate}
/// {@macro pulumi_netapp_active_directory_active_directory_args_doc}
class ActiveDirectoryArgs {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  final pulumi.Input<List<String>?>? administrators;
  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  final pulumi.Input<bool?>? aesEncryption;
  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  final pulumi.Input<List<String>?>? backupOperators;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  final pulumi.Input<String> dns;
  /// Fully qualified domain name for the Active Directory domain.
  final pulumi.Input<String> domain;
  /// If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted.
  final pulumi.Input<bool?>? encryptDcConnections;
  /// Hostname of the Active Directory server used as Kerberos Key Distribution Center. Only required for volumes using kerberized NFSv4.1
  final pulumi.Input<String?>? kdcHostname;
  /// IP address of the Active Directory server used as Kerberos Key Distribution Center.
  final pulumi.Input<String?>? kdcIp;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Specifies whether or not the LDAP traffic needs to be signed.
  final pulumi.Input<bool?>? ldapSigning;
  /// Name of the region for the policy to apply to.
  final pulumi.Input<String> location;
  /// The resource name of the Active Directory pool. Needs to be unique per location.
  final pulumi.Input<String?>? name;
  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  final pulumi.Input<String> netBiosPrefix;
  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  final pulumi.Input<bool?>? nfsUsersWithLdap;
  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  final pulumi.Input<String?>? organizationalUnit;
  /// Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  final pulumi.Input<List<String>?>? securityOperators;
  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  final pulumi.Input<String?>? site;
  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  final pulumi.Input<String> username;

  /// Creates a new [ActiveDirectoryArgs].
  /// [administrators] Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  /// [aesEncryption] Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  /// [backupOperators] Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  /// [password] Password for specified username. Note - Manual changes done to the password will not be detected. Terraform will not re-apply the password, unless you use a new password in Terraform.
  /// [project] The ID of the project in which the resource belongs.
  /// [securityOperators] Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  /// [site] Specifies an Active Directory site to manage domain controller selection.
  /// [username] Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  const ActiveDirectoryArgs({
    this.administrators,
    this.aesEncryption,
    this.backupOperators,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      administrators: (() { final guardedValue = map['administrators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      aesEncryption: (() { final guardedValue = map['aesEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backupOperators: (() { final guardedValue = map['backupOperators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dns: pulumi.Input.fromValue(map['dns'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      encryptDcConnections: (() { final guardedValue = map['encryptDcConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kdcHostname: (() { final guardedValue = map['kdcHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kdcIp: (() { final guardedValue = map['kdcIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ldapSigning: (() { final guardedValue = map['ldapSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netBiosPrefix: pulumi.Input.fromValue(map['netBiosPrefix'] as String),
      nfsUsersWithLdap: (() { final guardedValue = map['nfsUsersWithLdap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      organizationalUnit: (() { final guardedValue = map['organizationalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityOperators: (() { final guardedValue = map['securityOperators']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      site: (() { final guardedValue = map['site']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
