// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mutual_tls_mode.dart';

/// [Deprecated] Configuration for the mutual Tls mode for peer authentication. Configuration for the mutual Tls mode for peer authentication.
class MutualTls {
  /// Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
  final pulumi.Input<MutualTlsMode>? mode;

  /// Creates a new [MutualTls].
  /// [mode] Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
  MutualTls({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<MutualTlsMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory MutualTls.fromMap(Map<String, dynamic> map) {
    return MutualTls(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MutualTlsMode.fromValue(guardedValue as String)); })(),
    );
  }
}

