// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_network_auth_secret.dart';

class DomainOsNvRamSourceNetworkAuth {
  /// Specifies the secret used for authenticating the iSCSI connection.
  final pulumi.Input<DomainOsNvRamSourceNetworkAuthSecret>? secret;
  /// Sets the username for iSCSI authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [DomainOsNvRamSourceNetworkAuth].
  /// [secret] Specifies the secret used for authenticating the iSCSI connection.
  /// [username] Sets the username for iSCSI authentication.
  DomainOsNvRamSourceNetworkAuth({
    this.secret,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?pulumi.Input.mapOptionalInputValue<DomainOsNvRamSourceNetworkAuthSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory DomainOsNvRamSourceNetworkAuth.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkAuth(
      secret: map['secret'] == null ? null : (DomainOsNvRamSourceNetworkAuthSecret.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

