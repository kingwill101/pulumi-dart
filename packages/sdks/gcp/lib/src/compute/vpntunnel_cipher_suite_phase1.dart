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
      dhs: map['dhs'] == null ? null : ((map['dhs']! as List).cast<String>()).input(),
      encryptions: map['encryptions'] == null ? null : ((map['encryptions']! as List).cast<String>()).input(),
      integrities: map['integrities'] == null ? null : ((map['integrities']! as List).cast<String>()).input(),
      prves: map['prves'] == null ? null : ((map['prves']! as List).cast<String>()).input(),
    );
  }
}

