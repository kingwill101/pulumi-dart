// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Get Domain user name and password from key vault
class DomainUserCredentials {
  /// Key vault url to get the domain username and password
  final pulumi.Input<String?>? keyVaultUrl;
  /// Domain Password secret
  final pulumi.Input<String?>? passwordSecret;
  /// Domain user name secret
  final pulumi.Input<String?>? userNameSecret;

  /// Creates a new [DomainUserCredentials].
  /// [keyVaultUrl] Key vault url to get the domain username and password
  /// [passwordSecret] Domain Password secret
  /// [userNameSecret] Domain user name secret
  const DomainUserCredentials({
    this.keyVaultUrl,
    this.passwordSecret,
    this.userNameSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultUrl': ?keyVaultUrl,
      'passwordSecret': ?passwordSecret,
      'userNameSecret': ?userNameSecret,
    };
  }

  factory DomainUserCredentials.fromMap(Map<String, dynamic> map) {
    return DomainUserCredentials(
      keyVaultUrl: (() { final guardedValue = map['keyVaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecret: (() { final guardedValue = map['passwordSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userNameSecret: (() { final guardedValue = map['userNameSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
