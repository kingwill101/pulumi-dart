// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyComputeBeta {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final pulumi.Input<bool>? updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicyComputeBeta].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  const ShieldedInstanceIntegrityPolicyComputeBeta({
    this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': ?updateAutoLearnPolicy,
    };
  }

  factory ShieldedInstanceIntegrityPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyComputeBeta(
      updateAutoLearnPolicy: (() { final guardedValue = map['updateAutoLearnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

