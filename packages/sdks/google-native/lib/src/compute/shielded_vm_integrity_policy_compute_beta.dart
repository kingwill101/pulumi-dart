// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicyComputeBeta {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final pulumi.Input<bool>? updateAutoLearnPolicy;

  /// Creates a new [ShieldedVmIntegrityPolicyComputeBeta].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedVmIntegrityPolicyComputeBeta({
    this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': ?updateAutoLearnPolicy,
    };
  }

  factory ShieldedVmIntegrityPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicyComputeBeta(
      updateAutoLearnPolicy: (() { final guardedValue = map['updateAutoLearnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

