// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_disk_mirror_backing_store_source_network_auth_secret.dart';

class DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkAuthSecret? secret;
  /// Sets the username for iSCSI authentication.
  final String? username;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?secret == null ? null : secret!.toMap(),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth(
      secret: map['secret'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

