// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Active Directory admin credentials used to join the HPC Cache to a domain.
class CacheActiveDirectorySettingsResponseCredentials {
  /// Plain text password of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  final pulumi.Input<String>? password;
  /// Username of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  final pulumi.Input<String> username;

  /// Creates a new [CacheActiveDirectorySettingsResponseCredentials].
  /// [password] Plain text password of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  /// [username] Username of the Active Directory domain administrator. This value is stored encrypted and not returned on response.
  const CacheActiveDirectorySettingsResponseCredentials({
    this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': username,
    };
  }

  factory CacheActiveDirectorySettingsResponseCredentials.fromMap(Map<String, dynamic> map) {
    return CacheActiveDirectorySettingsResponseCredentials(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
