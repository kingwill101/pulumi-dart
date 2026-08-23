// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkIpTftp {
  /// Defines the root directory for TFTP services provided by the network.
  final pulumi.Input<String>? root;

  /// Creates a new [NetworkIpTftp].
  /// [root] Defines the root directory for TFTP services provided by the network.
  const NetworkIpTftp({
    this.root,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'root': ?root,
    };
  }

  factory NetworkIpTftp.fromMap(Map<String, dynamic> map) {
    return NetworkIpTftp(
      root: (() { final guardedValue = map['root']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
