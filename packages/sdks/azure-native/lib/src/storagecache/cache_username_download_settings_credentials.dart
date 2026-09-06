// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// When present, these are the credentials for the secure LDAP connection.
class CacheUsernameDownloadSettingsCredentials {
  /// The Bind Distinguished Name identity to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  final pulumi.Input<String?>? bindDn;
  /// The Bind password to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  final pulumi.Input<String?>? bindPassword;

  /// Creates a new [CacheUsernameDownloadSettingsCredentials].
  /// [bindDn] The Bind Distinguished Name identity to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  /// [bindPassword] The Bind password to be used in the secure LDAP connection. This value is stored encrypted and not returned on response.
  const CacheUsernameDownloadSettingsCredentials({
    this.bindDn,
    this.bindPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindDn': ?bindDn,
      'bindPassword': ?bindPassword,
    };
  }

  factory CacheUsernameDownloadSettingsCredentials.fromMap(Map<String, dynamic> map) {
    return CacheUsernameDownloadSettingsCredentials(
      bindDn: (() { final guardedValue = map['bindDn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindPassword: (() { final guardedValue = map['bindPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
