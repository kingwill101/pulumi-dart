// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VPNTunnelCipherSuitePhase2 {
  /// Encryption algorithms.
  final pulumi.Input<List<String>>? encryptions;
  /// Integrity algorithms.
  final pulumi.Input<List<String>>? integrities;
  /// Perfect forward secrecy groups.
  final pulumi.Input<List<String>>? pfs;

  /// Creates a new [VPNTunnelCipherSuitePhase2].
  /// [encryptions] Encryption algorithms.
  /// [integrities] Integrity algorithms.
  /// [pfs] Perfect forward secrecy groups.
  VPNTunnelCipherSuitePhase2({
    this.encryptions,
    this.integrities,
    this.pfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptions': ?encryptions,
      'integrities': ?integrities,
      'pfs': ?pfs,
    };
  }

  factory VPNTunnelCipherSuitePhase2.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuitePhase2(
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      integrities: (() { final guardedValue = map['integrities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pfs: (() { final guardedValue = map['pfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

