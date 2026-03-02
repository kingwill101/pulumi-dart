// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyResponse {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final pulumi.Input<bool> updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicyResponse].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedInstanceIntegrityPolicyResponse({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': updateAutoLearnPolicy,
    };
  }

  factory ShieldedInstanceIntegrityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyResponse(
      updateAutoLearnPolicy: (map['updateAutoLearnPolicy'] as bool).input(),
    );
  }
}

