// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesVirtualMachineScaleSet {
  final pulumi.Input<bool>? forceDelete;
  final pulumi.Input<bool>? reimageOnManualUpgrade;
  final pulumi.Input<bool>? rollInstancesWhenRequired;
  final pulumi.Input<bool>? scaleToZeroBeforeDeletion;

  /// Creates a new [FeaturesVirtualMachineScaleSet].
  /// [forceDelete] Optional.
  /// [reimageOnManualUpgrade] Optional.
  /// [rollInstancesWhenRequired] Optional.
  /// [scaleToZeroBeforeDeletion] Optional.
  FeaturesVirtualMachineScaleSet({
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

  factory FeaturesVirtualMachineScaleSet.fromMap(Map<String, dynamic> map) {
    return FeaturesVirtualMachineScaleSet(
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reimageOnManualUpgrade: (() { final guardedValue = map['reimageOnManualUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollInstancesWhenRequired: (() { final guardedValue = map['rollInstancesWhenRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scaleToZeroBeforeDeletion: (() { final guardedValue = map['scaleToZeroBeforeDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

