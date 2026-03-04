// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VPNTunnelCipherSuitePhase1 {
  /// Diffie-Hellman groups.
  final pulumi.Input<List<String>>? dhs;

  /// Encryption algorithms.
  final pulumi.Input<List<String>>? encryptions;

  /// Integrity algorithms.
  final pulumi.Input<List<String>>? integrities;

  /// Pseudo-random functions.
  final pulumi.Input<List<String>>? prves;

  /// Creates a new [VPNTunnelCipherSuitePhase1].
  /// [dhs] Diffie-Hellman groups.
  /// [encryptions] Encryption algorithms.
  /// [integrities] Integrity algorithms.
  /// [prves] Pseudo-random functions.
  VPNTunnelCipherSuitePhase1({
    this.dhs,
    this.encryptions,
    this.integrities,
    this.prves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhs': ?dhs,
      'encryptions': ?encryptions,
      'integrities': ?integrities,
      'prves': ?prves,
    };
  }

  factory VPNTunnelCipherSuitePhase1.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuitePhase1(
      dhs: (() {
        final guardedValue = map['dhs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      encryptions: (() {
        final guardedValue = map['encryptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      integrities: (() {
        final guardedValue = map['integrities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      prves: (() {
        final guardedValue = map['prves'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
