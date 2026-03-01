// ignore_for_file: unused_element, unnecessary_cast


class CacheDirectoryActiveDirectory {
  /// The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server.
  final String cacheNetbiosName;
  /// The primary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  final String dnsPrimaryIp;
  /// The secondary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  final String? dnsSecondaryIp;
  /// The fully qualified domain name of the Active Directory domain controller.
  final String domainName;
  /// The Active Directory domain's NetBIOS name.
  final String domainNetbiosName;
  /// The password of the Active Directory domain administrator.
  final String password;
  /// The username of the Active Directory domain administrator.
  final String username;

  /// Creates a new [CacheDirectoryActiveDirectory].
  /// [cacheNetbiosName] The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server.
  /// [dnsPrimaryIp] The primary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  /// [dnsSecondaryIp] The secondary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  /// [domainName] The fully qualified domain name of the Active Directory domain controller.
  /// [domainNetbiosName] The Active Directory domain's NetBIOS name.
  /// [password] The password of the Active Directory domain administrator.
  /// [username] The username of the Active Directory domain administrator.
  CacheDirectoryActiveDirectory({
    required this.cacheNetbiosName,
    required this.dnsPrimaryIp,
    this.dnsSecondaryIp,
    required this.domainName,
    required this.domainNetbiosName,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNetbiosName': cacheNetbiosName,
      'dnsPrimaryIp': dnsPrimaryIp,
      'dnsSecondaryIp': ?dnsSecondaryIp,
      'domainName': domainName,
      'domainNetbiosName': domainNetbiosName,
      'password': password,
      'username': username,
    };
  }

  factory CacheDirectoryActiveDirectory.fromMap(Map<String, dynamic> map) {
    return CacheDirectoryActiveDirectory(
      cacheNetbiosName: map['cacheNetbiosName'] as String,
      dnsPrimaryIp: map['dnsPrimaryIp'] as String,
      dnsSecondaryIp: map['dnsSecondaryIp'] == null ? null : map['dnsSecondaryIp'] as String,
      domainName: map['domainName'] as String,
      domainNetbiosName: map['domainNetbiosName'] as String,
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

