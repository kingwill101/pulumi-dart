// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceClientConnectionConfigSslConfig {
  /// SSL mode. Specifies client-server SSL/TLS connection behavior.
  /// Possible values are: `ENCRYPTED_ONLY`, `ALLOW_UNENCRYPTED_AND_ENCRYPTED`.
  final pulumi.Input<String>? sslMode;

  /// Creates a new [InstanceClientConnectionConfigSslConfig].
  /// [sslMode] SSL mode. Specifies client-server SSL/TLS connection behavior.
  InstanceClientConnectionConfigSslConfig({
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sslMode': ?sslMode,
    };
  }

  factory InstanceClientConnectionConfigSslConfig.fromMap(Map<String, dynamic> map) {
    return InstanceClientConnectionConfigSslConfig(
      sslMode: map['sslMode'] == null ? null : (map['sslMode']! as String).input(),
    );
  }
}

