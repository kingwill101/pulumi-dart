// ignore_for_file: unused_element, unnecessary_cast


class ProviderFeaturesVirtualMachineScaleSet {
  final bool? forceDelete;
  final bool? reimageOnManualUpgrade;
  final bool? rollInstancesWhenRequired;
  final bool? scaleToZeroBeforeDeletion;

  /// Creates a new [ProviderFeaturesVirtualMachineScaleSet].
  /// [forceDelete] Optional.
  /// [reimageOnManualUpgrade] Optional.
  /// [rollInstancesWhenRequired] Optional.
  /// [scaleToZeroBeforeDeletion] Optional.
  ProviderFeaturesVirtualMachineScaleSet({
    this.forceDelete,
    this.reimageOnManualUpgrade,
    this.rollInstancesWhenRequired,
    this.scaleToZeroBeforeDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDelete': ?forceDelete,
      'reimageOnManualUpgrade': ?reimageOnManualUpgrade,
      'rollInstancesWhenRequired': ?rollInstancesWhenRequired,
      'scaleToZeroBeforeDeletion': ?scaleToZeroBeforeDeletion,
    };
  }

  factory ProviderFeaturesVirtualMachineScaleSet.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesVirtualMachineScaleSet(
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      reimageOnManualUpgrade: map['reimageOnManualUpgrade'] == null ? null : map['reimageOnManualUpgrade'] as bool,
      rollInstancesWhenRequired: map['rollInstancesWhenRequired'] == null ? null : map['rollInstancesWhenRequired'] as bool,
      scaleToZeroBeforeDeletion: map['scaleToZeroBeforeDeletion'] == null ? null : map['scaleToZeroBeforeDeletion'] as bool,
    );
  }
}

