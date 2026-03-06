// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicy {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final pulumi.Input<bool>? updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicy].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  const ShieldedInstanceIntegrityPolicy({
    this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': ?updateAutoLearnPolicy,
    };
  }

  factory ShieldedInstanceIntegrityPolicy.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicy(
      updateAutoLearnPolicy: (() { final guardedValue = map['updateAutoLearnPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

