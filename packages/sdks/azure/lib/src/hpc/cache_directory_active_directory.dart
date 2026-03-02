// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheDirectoryActiveDirectory {
  /// The NetBIOS name to assign to the HPC Cache when it joins the Active Directory domain as a server.
  final pulumi.Input<String> cacheNetbiosName;
  /// The primary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  final pulumi.Input<String> dnsPrimaryIp;
  /// The secondary DNS IP address used to resolve the Active Directory domain controller's FQDN.
  final pulumi.Input<String>? dnsSecondaryIp;
  /// The fully qualified domain name of the Active Directory domain controller.
  final pulumi.Input<String> domainName;
  /// The Active Directory domain's NetBIOS name.
  final pulumi.Input<String> domainNetbiosName;
  /// The password of the Active Directory domain administrator.
  final pulumi.Input<String> password;
  /// The username of the Active Directory domain administrator.
  final pulumi.Input<String> username;

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
      cacheNetbiosName: (map['cacheNetbiosName'] as String).input(),
      dnsPrimaryIp: (map['dnsPrimaryIp'] as String).input(),
      dnsSecondaryIp: map['dnsSecondaryIp'] == null ? null : (map['dnsSecondaryIp']! as String).input(),
      domainName: (map['domainName'] as String).input(),
      domainNetbiosName: (map['domainNetbiosName'] as String).input(),
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

