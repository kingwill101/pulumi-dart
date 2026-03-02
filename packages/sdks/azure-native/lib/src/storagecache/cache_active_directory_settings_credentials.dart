// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory admin credentials used to join the HPC Cache to a domain.
class CacheActiveDirectorySettingsCredentials {
  /// Plain text password of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  final pulumi.Input<String>? password;
  /// Username of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  final pulumi.Input<String> username;

  /// Creates a new [CacheActiveDirectorySettingsCredentials].
  /// [password] Plain text password of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  /// [username] Username of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  CacheActiveDirectorySettingsCredentials({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': username,
    };
  }

  factory CacheActiveDirectorySettingsCredentials.fromMap(Map<String, dynamic> map) {
    return CacheActiveDirectorySettingsCredentials(
      password: map['password'] == null ? null : (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

