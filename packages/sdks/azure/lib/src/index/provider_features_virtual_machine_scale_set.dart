// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesVirtualMachineScaleSet {
  final pulumi.Input<bool>? forceDelete;
  final pulumi.Input<bool>? reimageOnManualUpgrade;
  final pulumi.Input<bool>? rollInstancesWhenRequired;
  final pulumi.Input<bool>? scaleToZeroBeforeDeletion;

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
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      reimageOnManualUpgrade: map['reimageOnManualUpgrade'] == null ? null : (map['reimageOnManualUpgrade'] as bool).input(),
      rollInstancesWhenRequired: map['rollInstancesWhenRequired'] == null ? null : (map['rollInstancesWhenRequired'] as bool).input(),
      scaleToZeroBeforeDeletion: map['scaleToZeroBeforeDeletion'] == null ? null : (map['scaleToZeroBeforeDeletion'] as bool).input(),
    );
  }
}

