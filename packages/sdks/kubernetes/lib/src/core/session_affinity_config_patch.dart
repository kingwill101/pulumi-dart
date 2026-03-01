// ignore_for_file: unused_element, unnecessary_cast

import 'client_ipconfig_patch.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfigPatch {
  /// clientIP contains the configurations of Client IP based session affinity.
  final ClientIPConfigPatch? clientIP;

  /// Creates a new [SessionAffinityConfigPatch].
  /// [clientIP] clientIP contains the configurations of Client IP based session affinity.
  SessionAffinityConfigPatch({
    this.clientIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIP': ?clientIP == null ? null : clientIP!.toMap(),
    };
  }

  factory SessionAffinityConfigPatch.fromMap(Map<String, dynamic> map) {
    return SessionAffinityConfigPatch(
      clientIP: map['clientIP'] == null ? null : ClientIPConfigPatch.fromMap((map['clientIP'] as Map).cast<String, dynamic>()),
    );
  }
}

