// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_network_auth_secret.dart';

class DomainDevicesDiskSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final pulumi.Input<DomainDevicesDiskSourceNetworkAuthSecret>? secret;
  /// Sets the username for iSCSI authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainDevicesDiskSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainDevicesDiskSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkAuthSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory DomainDevicesDiskSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkAuth(
      secret: map['secret'] == null ? null : (DomainDevicesDiskSourceNetworkAuthSecret.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

