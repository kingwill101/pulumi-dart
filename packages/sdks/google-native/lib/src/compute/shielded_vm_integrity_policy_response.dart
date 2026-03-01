// ignore_for_file: unused_element, unnecessary_cast


/// The policy describes the baseline against which VM instance boot integrity is measured.
class ShieldedVmIntegrityPolicyResponse {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool updateAutoLearnPolicy;

  /// Creates a new [ShieldedVmIntegrityPolicyResponse].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedVmIntegrityPolicyResponse({
    required this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': updateAutoLearnPolicy,
    };
  }

  factory ShieldedVmIntegrityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedVmIntegrityPolicyResponse(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] as bool,
    );
  }
}

