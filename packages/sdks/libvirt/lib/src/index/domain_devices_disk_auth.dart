// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_auth_secret.dart';

class DomainDevicesDiskAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final DomainDevicesDiskAuthSecret? secret;
  /// Sets the username for iSCSI authentication.
  final String? username;

  /// Creates a new [DomainDevicesDiskAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?secret == null ? null : secret!.toMap(),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskAuth(
      secret: map['secret'] == null ? null : DomainDevicesDiskAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

