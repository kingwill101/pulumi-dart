// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicyResponse {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final pulumi.Input<bool> updateAutoLearnPolicy;

  /// Creates a new [ShieldedVmIntegrityPolicyResponse].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  const ShieldedVmIntegrityPolicyResponse({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': updateAutoLearnPolicy,
    };
  }

  factory ShieldedVmIntegrityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicyResponse(
      updateAutoLearnPolicy: pulumi.Input.fromValue(map['updateAutoLearnPolicy'] as bool),
    );
  }
}

