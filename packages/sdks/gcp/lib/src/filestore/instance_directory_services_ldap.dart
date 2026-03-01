// ignore_for_file: unused_element, unnecessary_cast


class InstanceDirectoryServicesLdap {
  /// The LDAP domain name in the format of `my-domain.com`.
  final String domain;
  /// The groups Organizational Unit (OU) is optional. This parameter is a hint
  /// to allow faster lookup in the LDAP namespace. In case that this parameter
  /// is not provided, Filestore instance will query the whole LDAP namespace.
  final String? groupsOu;
  /// The servers names are used for specifying the LDAP servers names.
  /// The LDAP servers names can come with two formats:
  /// 1. DNS name, for example: `ldap.example1.com`, `ldap.example2.com`.
  /// 2. IP address, for example: `10.0.0.1`, `10.0.0.2`, `10.0.0.3`.
  /// All servers names must be in the same format: either all DNS names or all
  /// IP addresses.
  final List<String> servers;
  /// The users Organizational Unit (OU) is optional. This parameter is a hint
  /// to allow faster lookup in the LDAP namespace. In case that this parameter
  /// is not provided, Filestore instance will query the whole LDAP namespace.
  final String? usersOu;

  /// Creates a new [InstanceDirectoryServicesLdap].
  /// [domain] The LDAP domain name in the format of `my-domain.com`.
  /// [groupsOu] The groups Organizational Unit (OU) is optional. This parameter is a hint
  /// [servers] The servers names are used for specifying the LDAP servers names.
  /// [usersOu] The users Organizational Unit (OU) is optional. This parameter is a hint
  InstanceDirectoryServicesLdap({
    required this.domain,
    this.groupsOu,
    required this.servers,
    this.usersOu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'groupsOu': ?groupsOu,
      'servers': servers,
      'usersOu': ?usersOu,
    };
  }

  factory InstanceDirectoryServicesLdap.fromMap(Map<String, dynamic> map) {
    return InstanceDirectoryServicesLdap(
      domain: map['domain'] as String,
      groupsOu: map['groupsOu'] == null ? null : map['groupsOu'] as String,
      servers: (map['servers'] as List).cast<String>(),
      usersOu: map['usersOu'] == null ? null : map['usersOu'] as String,
    );
  }
}

