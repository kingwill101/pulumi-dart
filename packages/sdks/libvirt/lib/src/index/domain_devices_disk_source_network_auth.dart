// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_source_network_auth_secret.dart';

class DomainDevicesDiskSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final DomainDevicesDiskSourceNetworkAuthSecret? secret;
  /// Sets the username for iSCSI authentication.
  final String? username;

  /// Creates a new [DomainDevicesDiskSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?secret == null ? null : secret!.toMap(),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkAuth(
      secret: map['secret'] == null ? null : DomainDevicesDiskSourceNetworkAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

