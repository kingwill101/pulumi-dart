// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkIpDhcpBootp {
  /// Specifies a file used for BOOTP configurations.
  final pulumi.Input<String?>? file;
  /// Sets the server address for the BOOTP configuration.
  final pulumi.Input<String?>? server;

  /// Creates a new [NetworkIpDhcpBootp].
  /// [file] Specifies a file used for BOOTP configurations.
  /// [server] Sets the server address for the BOOTP configuration.
  const NetworkIpDhcpBootp({
    this.file,
    this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'server': ?server,
    };
  }

  factory NetworkIpDhcpBootp.fromMap(Map<String, dynamic> map) {
    return NetworkIpDhcpBootp(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
