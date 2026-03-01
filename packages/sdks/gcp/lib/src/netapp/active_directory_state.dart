// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActiveDirectory resources.
class ActiveDirectoryState {
  /// Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  final pulumi.Input<List<String>>? administrators;
  /// Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  final pulumi.Input<bool>? aesEncryption;
  /// Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  final pulumi.Input<List<String>>? backupOperators;
  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Comma separated list of DNS server IP addresses for the Active Directory domain.
  final pulumi.Input<String>? dns;
  /// Fully qualified domain name for the Active Directory domain.
  final pulumi.Input<String>? domain;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  final pulumi.Input<String>? location;
  /// The resource name of the Active Directory pool. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// NetBIOS name prefix of the server to be created.
  /// A five-character random ID is generated automatically, for example, -6f9a, and appended to the prefix. The full UNC share path will have the following format:
  /// `\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME`
  final pulumi.Input<String>? netBiosPrefix;
  /// Local UNIX users on clients without valid user information in Active Directory are blocked from access to LDAP enabled volumes.
  /// This option can be used to temporarily switch such volumes to AUTH_SYS authentication (user ID + 1-16 groups).
  final pulumi.Input<bool>? nfsUsersWithLdap;
  /// Name of the Organizational Unit where you intend to create the computer account for NetApp Volumes.
  /// Defaults to `CN=Computers` if left empty.
  final pulumi.Input<String>? organizationalUnit;
  final pulumi.Input<String>? password;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  final pulumi.Input<List<String>>? securityOperators;
  /// Specifies an Active Directory site to manage domain controller selection.
  /// Use when Active Directory domain controllers in multiple regions are configured. Defaults to `Default-First-Site-Name` if left empty.
  final pulumi.Input<String>? site;
  /// The state of the Active Directory policy (not the Active Directory itself).
  final pulumi.Input<String>? state;
  /// The state details of the Active Directory.
  final pulumi.Input<String>? stateDetails;
  /// Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  final pulumi.Input<String>? username;

  /// Creates a new [ActiveDirectoryState].
  /// [administrators] Domain user accounts to be added to the local Administrators group of the SMB service. Comma-separated list of domain users or groups. The Domain Admin group is automatically added when the service joins your domain as a hidden group.
  /// [aesEncryption] Enables AES-128 and AES-256 encryption for Kerberos-based communication with Active Directory.
  /// [backupOperators] Domain user/group accounts to be added to the Backup Operators group of the SMB service. The Backup Operators group allows members to backup and restore files regardless of whether they have read or write access to the files. Comma-separated list.
  /// [createTime] Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [description] An optional description of this resource.
  /// [dns] Comma separated list of DNS server IP addresses for the Active Directory domain.
  /// [domain] Fully qualified domain name for the Active Directory domain.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
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
  /// [password] Optional.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [securityOperators] Domain accounts that require elevated privileges such as `SeSecurityPrivilege` to manage security logs. Comma-separated list.
  /// [site] Specifies an Active Directory site to manage domain controller selection.
  /// [state] The state of the Active Directory policy (not the Active Directory itself).
  /// [stateDetails] The state details of the Active Directory.
  /// [username] Username for the Active Directory account with permissions to create the compute account within the specified organizational unit.
  ActiveDirectoryState({
    pulumi.Output<List<String>>? administrators,
    pulumi.Output<bool>? aesEncryption,
    pulumi.Output<List<String>>? backupOperators,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dns,
    pulumi.Output<String>? domain,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<bool>? encryptDcConnections,
    pulumi.Output<String>? kdcHostname,
    pulumi.Output<String>? kdcIp,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<bool>? ldapSigning,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? netBiosPrefix,
    pulumi.Output<bool>? nfsUsersWithLdap,
    pulumi.Output<String>? organizationalUnit,
    pulumi.Output<String>? password,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<String>>? securityOperators,
    pulumi.Output<String>? site,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateDetails,
    pulumi.Output<String>? username,
  }) :
      administrators = pulumi.Input.asOptionalInput<List<String>>(administrators),
      aesEncryption = pulumi.Input.asOptionalInput<bool>(aesEncryption),
      backupOperators = pulumi.Input.asOptionalInput<List<String>>(backupOperators),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dns = pulumi.Input.asOptionalInput<String>(dns),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptDcConnections = pulumi.Input.asOptionalInput<bool>(encryptDcConnections),
      kdcHostname = pulumi.Input.asOptionalInput<String>(kdcHostname),
      kdcIp = pulumi.Input.asOptionalInput<String>(kdcIp),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      ldapSigning = pulumi.Input.asOptionalInput<bool>(ldapSigning),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      netBiosPrefix = pulumi.Input.asOptionalInput<String>(netBiosPrefix),
      nfsUsersWithLdap = pulumi.Input.asOptionalInput<bool>(nfsUsersWithLdap),
      organizationalUnit = pulumi.Input.asOptionalInput<String>(organizationalUnit),
      password = pulumi.Input.asOptionalInput<String>(password),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      securityOperators = pulumi.Input.asOptionalInput<List<String>>(securityOperators),
      site = pulumi.Input.asOptionalInput<String>(site),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateDetails = pulumi.Input.asOptionalInput<String>(stateDetails),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrators': ?administrators,
      'aesEncryption': ?aesEncryption,
      'backupOperators': ?backupOperators,
      'createTime': ?createTime,
      'description': ?description,
      'dns': ?dns,
      'domain': ?domain,
      'effectiveLabels': ?effectiveLabels,
      'encryptDcConnections': ?encryptDcConnections,
      'kdcHostname': ?kdcHostname,
      'kdcIp': ?kdcIp,
      'labels': ?labels,
      'ldapSigning': ?ldapSigning,
      'location': ?location,
      'name': ?name,
      'netBiosPrefix': ?netBiosPrefix,
      'nfsUsersWithLdap': ?nfsUsersWithLdap,
      'organizationalUnit': ?organizationalUnit,
      'password': ?password,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'securityOperators': ?securityOperators,
      'site': ?site,
      'state': ?state,
      'stateDetails': ?stateDetails,
      'username': ?username,
    };
  }

  factory ActiveDirectoryState.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryState(
      administrators: map['administrators'] == null ? null : pulumi.Output.create<List<String>>((map['administrators'] as List).cast<String>()),
      aesEncryption: map['aesEncryption'] == null ? null : pulumi.Output.create<bool>(map['aesEncryption'] as bool),
      backupOperators: map['backupOperators'] == null ? null : pulumi.Output.create<List<String>>((map['backupOperators'] as List).cast<String>()),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dns: map['dns'] == null ? null : pulumi.Output.create<String>(map['dns'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptDcConnections: map['encryptDcConnections'] == null ? null : pulumi.Output.create<bool>(map['encryptDcConnections'] as bool),
      kdcHostname: map['kdcHostname'] == null ? null : pulumi.Output.create<String>(map['kdcHostname'] as String),
      kdcIp: map['kdcIp'] == null ? null : pulumi.Output.create<String>(map['kdcIp'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      ldapSigning: map['ldapSigning'] == null ? null : pulumi.Output.create<bool>(map['ldapSigning'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      netBiosPrefix: map['netBiosPrefix'] == null ? null : pulumi.Output.create<String>(map['netBiosPrefix'] as String),
      nfsUsersWithLdap: map['nfsUsersWithLdap'] == null ? null : pulumi.Output.create<bool>(map['nfsUsersWithLdap'] as bool),
      organizationalUnit: map['organizationalUnit'] == null ? null : pulumi.Output.create<String>(map['organizationalUnit'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      securityOperators: map['securityOperators'] == null ? null : pulumi.Output.create<List<String>>((map['securityOperators'] as List).cast<String>()),
      site: map['site'] == null ? null : pulumi.Output.create<String>(map['site'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateDetails: map['stateDetails'] == null ? null : pulumi.Output.create<String>(map['stateDetails'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

