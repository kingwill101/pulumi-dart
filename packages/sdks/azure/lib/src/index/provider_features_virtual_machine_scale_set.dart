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
  const ProviderFeaturesVirtualMachineScaleSet({
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
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reimageOnManualUpgrade: (() { final guardedValue = map['reimageOnManualUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollInstancesWhenRequired: (() { final guardedValue = map['rollInstancesWhenRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scaleToZeroBeforeDeletion: (() { final guardedValue = map['scaleToZeroBeforeDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

