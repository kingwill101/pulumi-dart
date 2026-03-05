// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchRuntimeInfoCurrentUsage {
  /// (Output)
  /// Accelerator type being used, if any.
  final pulumi.Input<String>? acceleratorType;
  /// (Output)
  /// Milli (one-thousandth) accelerator..
  final pulumi.Input<String>? milliAccelerator;
  /// (Output)
  /// Milli (one-thousandth) Dataproc Compute Units (DCUs).
  final pulumi.Input<String>? milliDcu;
  /// (Output)
  /// Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier.
  final pulumi.Input<String>? milliDcuPremium;
  /// (Output)
  /// Shuffle Storage in gigabytes (GB).
  final pulumi.Input<String>? shuffleStorageGb;
  /// (Output)
  /// Shuffle Storage in gigabytes (GB) charged at premium tier.
  final pulumi.Input<String>? shuffleStorageGbPremium;
  /// (Output)
  /// The timestamp of the usage snapshot.
  final pulumi.Input<String>? snapshotTime;

  /// Creates a new [BatchRuntimeInfoCurrentUsage].
  /// [acceleratorType] (Output)
  /// [milliAccelerator] (Output)
  /// [milliDcu] (Output)
  /// [milliDcuPremium] (Output)
  /// [shuffleStorageGb] (Output)
  /// [shuffleStorageGbPremium] (Output)
  /// [snapshotTime] (Output)
  BatchRuntimeInfoCurrentUsage({
    this.acceleratorType,
    this.milliAccelerator,
    this.milliDcu,
    this.milliDcuPremium,
    this.shuffleStorageGb,
    this.shuffleStorageGbPremium,
    this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'milliAccelerator': ?milliAccelerator,
      'milliDcu': ?milliDcu,
      'milliDcuPremium': ?milliDcuPremium,
      'shuffleStorageGb': ?shuffleStorageGb,
      'shuffleStorageGbPremium': ?shuffleStorageGbPremium,
      'snapshotTime': ?snapshotTime,
    };
  }

  factory BatchRuntimeInfoCurrentUsage.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfoCurrentUsage(
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milliAccelerator: (() { final guardedValue = map['milliAccelerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milliDcu: (() { final guardedValue = map['milliDcu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milliDcuPremium: (() { final guardedValue = map['milliDcuPremium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleStorageGb: (() { final guardedValue = map['shuffleStorageGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleStorageGbPremium: (() { final guardedValue = map['shuffleStorageGbPremium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotTime: (() { final guardedValue = map['snapshotTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

