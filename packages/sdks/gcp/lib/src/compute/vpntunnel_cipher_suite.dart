// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpntunnel_cipher_suite_phase1.dart';
import 'vpntunnel_cipher_suite_phase2.dart';

class VPNTunnelCipherSuite {
  /// Cipher configuration for phase 1 of the IKE protocol.
  /// Structure is documented below.
  final pulumi.Input<VPNTunnelCipherSuitePhase1>? phase1;
  /// Cipher configuration for phase 2 of the IKE protocol.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_cipher_suite_phase1"&gt;&lt;/a&gt;The `phase1` block supports:
  final pulumi.Input<VPNTunnelCipherSuitePhase2>? phase2;

  /// Creates a new [VPNTunnelCipherSuite].
  /// [phase1] Cipher configuration for phase 1 of the IKE protocol.
  /// [phase2] Cipher configuration for phase 2 of the IKE protocol.
  VPNTunnelCipherSuite({
    this.phase1,
    this.phase2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phase1': ?pulumi.Input.mapOptionalInputValue<VPNTunnelCipherSuitePhase1, Map<String, dynamic>>(phase1, (value) => value.toMap()),
      'phase2': ?pulumi.Input.mapOptionalInputValue<VPNTunnelCipherSuitePhase2, Map<String, dynamic>>(phase2, (value) => value.toMap()),
    };
  }

  factory VPNTunnelCipherSuite.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuite(
      phase1: (() { final guardedValue = map['phase1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VPNTunnelCipherSuitePhase1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      phase2: (() { final guardedValue = map['phase2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VPNTunnelCipherSuitePhase2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

