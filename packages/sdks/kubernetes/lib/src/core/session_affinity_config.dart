// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_ipconfig.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfig {
  /// clientIP contains the configurations of Client IP based session affinity.
  final pulumi.Input<ClientIPConfig>? clientIP;

  /// Creates a new [SessionAffinityConfig].
  /// [clientIP] clientIP contains the configurations of Client IP based session affinity.
  const SessionAffinityConfig({
    this.clientIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIP': ?pulumi.Input.mapOptionalInputValue<ClientIPConfig, Map<String, dynamic>>(clientIP, (value) => value.toMap()),
    };
  }

  factory SessionAffinityConfig.fromMap(Map<String, dynamic> map) {
    return SessionAffinityConfig(
      clientIP: (() { final guardedValue = map['clientIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientIPConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

