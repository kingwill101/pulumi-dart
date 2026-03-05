// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_postgresql_profile_ssl_config_server_and_client_verification.dart';
import 'connection_profile_postgresql_profile_ssl_config_server_verification.dart';

class ConnectionProfilePostgresqlProfileSslConfig {
  /// If this field is set, the communication will be encrypted with TLS encryption
  /// and both the server identity and the client identity will be authenticated.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification>? serverAndClientVerification;
  /// If this field is set, the communication will be encrypted with TLS encryption
  /// and the server identity will be authenticated.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfileSslConfigServerVerification>? serverVerification;

  /// Creates a new [ConnectionProfilePostgresqlProfileSslConfig].
  /// [serverAndClientVerification] If this field is set, the communication will be encrypted with TLS encryption
  /// [serverVerification] If this field is set, the communication will be encrypted with TLS encryption
  ConnectionProfilePostgresqlProfileSslConfig({
    this.serverAndClientVerification,
    this.serverVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverAndClientVerification': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification, Map<String, dynamic>>(serverAndClientVerification, (value) => value.toMap()),
      'serverVerification': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresqlProfileSslConfigServerVerification, Map<String, dynamic>>(serverVerification, (value) => value.toMap()),
    };
  }

  factory ConnectionProfilePostgresqlProfileSslConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfileSslConfig(
      serverAndClientVerification: (() { final guardedValue = map['serverAndClientVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresqlProfileSslConfigServerAndClientVerification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverVerification: (() { final guardedValue = map['serverVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresqlProfileSslConfigServerVerification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

