// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_network_auth_secret.dart';

class DomainDevicesDiskMirrorSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkAuthSecret>? secret;
  /// Sets the username for iSCSI authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskMirrorSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkAuthSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkAuth(
      secret: map['secret'] == null ? null : (DomainDevicesDiskMirrorSourceNetworkAuthSecret.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

