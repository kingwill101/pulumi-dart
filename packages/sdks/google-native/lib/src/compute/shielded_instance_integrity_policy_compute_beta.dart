// ignore_for_file: unused_element, unnecessary_cast


/// The policy describes the baseline against which Instance boot integrity is measured.
class ShieldedInstanceIntegrityPolicyComputeBeta {
  /// Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  final bool? updateAutoLearnPolicy;

  /// Creates a new [ShieldedInstanceIntegrityPolicyComputeBeta].
  /// [updateAutoLearnPolicy] Updates the integrity policy baseline using the measurements from the VM instance's most recent boot.
  ShieldedInstanceIntegrityPolicyComputeBeta({
    this.updateAutoLearnPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAutoLearnPolicy': ?updateAutoLearnPolicy,
    };
  }

  factory ShieldedInstanceIntegrityPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceIntegrityPolicyComputeBeta(
      updateAutoLearnPolicy: map['updateAutoLearnPolicy'] == null ? null : map['updateAutoLearnPolicy'] as bool,
    );
  }
}

