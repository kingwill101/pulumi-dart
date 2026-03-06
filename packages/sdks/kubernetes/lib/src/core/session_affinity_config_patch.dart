// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_ipconfig_patch.dart';

/// SessionAffinityConfig represents the configurations of session affinity.
class SessionAffinityConfigPatch {
  /// clientIP contains the configurations of Client IP based session affinity.
  final pulumi.Input<ClientIPConfigPatch>? clientIP;

  /// Creates a new [SessionAffinityConfigPatch].
  /// [clientIP] clientIP contains the configurations of Client IP based session affinity.
  const SessionAffinityConfigPatch({
    this.clientIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIP': ?pulumi.Input.mapOptionalInputValue<ClientIPConfigPatch, Map<String, dynamic>>(clientIP, (value) => value.toMap()),
    };
  }

  factory SessionAffinityConfigPatch.fromMap(Map<String, dynamic> map) {
    return SessionAffinityConfigPatch(
      clientIP: (() { final guardedValue = map['clientIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientIPConfigPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

