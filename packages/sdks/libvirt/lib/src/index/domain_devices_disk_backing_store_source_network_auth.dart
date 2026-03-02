// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_backing_store_source_network_auth_secret.dart';

class DomainDevicesDiskBackingStoreSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final pulumi.Input<DomainDevicesDiskBackingStoreSourceNetworkAuthSecret>? secret;
  /// Sets the username for iSCSI authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskBackingStoreSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskBackingStoreSourceNetworkAuthSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkAuth(
      secret: map['secret'] == null ? null : (DomainDevicesDiskBackingStoreSourceNetworkAuthSecret.fromMap((map['secret'] as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

