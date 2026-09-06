// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// When present, these are the credentials for the secure LDAP connection.
class CacheUsernameDownloadSettingsResponseCredentials {
  /// The Bind Distinguished Name identity to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  final pulumi.Input<String?>? bindDn;
  /// The Bind password to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  final pulumi.Input<String?>? bindPassword;

  /// Creates a new [CacheUsernameDownloadSettingsResponseCredentials].
  /// [bindDn] The Bind Distinguished Name identity to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  /// [bindPassword] The Bind password to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  const CacheUsernameDownloadSettingsResponseCredentials({
    this.bindDn,
    this.bindPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindDn': ?bindDn,
      'bindPassword': ?bindPassword,
    };
  }

  factory CacheUsernameDownloadSettingsResponseCredentials.fromMap(Map<String, dynamic> map) {
    return CacheUsernameDownloadSettingsResponseCredentials(
      bindDn: (() { final guardedValue = map['bindDn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindPassword: (() { final guardedValue = map['bindPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
