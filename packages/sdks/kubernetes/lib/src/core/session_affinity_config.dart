// ignore_for_file: unused_element, unnecessary_cast

import 'client_ipconfig.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfig {
  /// clientIP contains the configurations of Client IP based session affinity.
  final ClientIPConfig? clientIP;

  /// Creates a new [SessionAffinityConfig].
  /// [clientIP] clientIP contains the configurations of Client IP based session affinity.
  SessionAffinityConfig({
    this.clientIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIP': ?clientIP == null ? null : clientIP!.toMap(),
    };
  }

  factory SessionAffinityConfig.fromMap(Map<String, dynamic> map) {
    return SessionAffinityConfig(
      clientIP: map['clientIP'] == null ? null : ClientIPConfig.fromMap((map['clientIP'] as Map).cast<String, dynamic>()),
    );
  }
}

