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
    this.administrators,
    this.aesEncryption,
    this.backupOperators,
    this.createTime,
    this.description,
    this.dns,
    this.domain,
    this.effectiveLabels,
    this.encryptDcConnections,
    this.kdcHostname,
    this.kdcIp,
    this.labels,
    this.ldapSigning,
    this.location,
    this.name,
    this.netBiosPrefix,
    this.nfsUsersWithLdap,
    this.organizationalUnit,
    this.password,
    this.project,
    this.pulumiLabels,
    this.securityOperators,
    this.site,
    this.state,
    this.stateDetails,
    this.username,
  });

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
      administrators: (() {
        final guardedValue = map['administrators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      aesEncryption: (() {
        final guardedValue = map['aesEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backupOperators: (() {
        final guardedValue = map['backupOperators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dns: (() {
        final guardedValue = map['dns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      encryptDcConnections: (() {
        final guardedValue = map['encryptDcConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kdcHostname: (() {
        final guardedValue = map['kdcHostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kdcIp: (() {
        final guardedValue = map['kdcIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      ldapSigning: (() {
        final guardedValue = map['ldapSigning'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netBiosPrefix: (() {
        final guardedValue = map['netBiosPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfsUsersWithLdap: (() {
        final guardedValue = map['nfsUsersWithLdap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      organizationalUnit: (() {
        final guardedValue = map['organizationalUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      securityOperators: (() {
        final guardedValue = map['securityOperators'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      site: (() {
        final guardedValue = map['site'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateDetails: (() {
        final guardedValue = map['stateDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
