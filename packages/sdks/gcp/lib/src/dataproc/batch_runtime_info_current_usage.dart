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
      acceleratorType: map['acceleratorType'] == null ? null : (map['acceleratorType']! as String).input(),
      milliAccelerator: map['milliAccelerator'] == null ? null : (map['milliAccelerator']! as String).input(),
      milliDcu: map['milliDcu'] == null ? null : (map['milliDcu']! as String).input(),
      milliDcuPremium: map['milliDcuPremium'] == null ? null : (map['milliDcuPremium']! as String).input(),
      shuffleStorageGb: map['shuffleStorageGb'] == null ? null : (map['shuffleStorageGb']! as String).input(),
      shuffleStorageGbPremium: map['shuffleStorageGbPremium'] == null ? null : (map['shuffleStorageGbPremium']! as String).input(),
      snapshotTime: map['snapshotTime'] == null ? null : (map['snapshotTime']! as String).input(),
    );
  }
}

