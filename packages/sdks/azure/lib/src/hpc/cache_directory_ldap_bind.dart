// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CacheDirectoryLdapBind {
  /// The Bind Distinguished Name (DN) identity to be used in the secure LDAP connection.
  final pulumi.Input<String> dn;
  /// The Bind password to be used in the secure LDAP connection.
  final pulumi.Input<String> password;

  /// Creates a new [CacheDirectoryLdapBind].
  /// [dn] The Bind Distinguished Name (DN) identity to be used in the secure LDAP connection.
  /// [password] The Bind password to be used in the secure LDAP connection.
  CacheDirectoryLdapBind({
    required this.dn,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dn': dn,
      'password': password,
    };
  }

  factory CacheDirectoryLdapBind.fromMap(Map<String, dynamic> map) {
    return CacheDirectoryLdapBind(
      dn: (map['dn'] as String).input(),
      password: (map['password'] as String).input(),
    );
  }
}

