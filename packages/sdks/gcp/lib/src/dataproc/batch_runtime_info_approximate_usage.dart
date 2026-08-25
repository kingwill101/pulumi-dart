// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchRuntimeInfoApproximateUsage {
  /// (Output)
  /// Accelerator type being used, if any.
  final pulumi.Input<String?>? acceleratorType;
  /// (Output)
  /// Accelerator usage in (milliAccelerator x seconds)
  final pulumi.Input<String?>? milliAcceleratorSeconds;
  /// (Output)
  /// DCU (Dataproc Compute Units) usage in (milliDCU x seconds)
  final pulumi.Input<String?>? milliDcuSeconds;
  /// (Output)
  /// Shuffle storage usage in (GB x seconds)
  final pulumi.Input<String?>? shuffleStorageGbSeconds;

  /// Creates a new [BatchRuntimeInfoApproximateUsage].
  /// [acceleratorType] (Output)
  /// [milliAcceleratorSeconds] (Output)
  /// [milliDcuSeconds] (Output)
  /// [shuffleStorageGbSeconds] (Output)
  const BatchRuntimeInfoApproximateUsage({
    this.acceleratorType,
    this.milliAcceleratorSeconds,
    this.milliDcuSeconds,
    this.shuffleStorageGbSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'milliAcceleratorSeconds': ?milliAcceleratorSeconds,
      'milliDcuSeconds': ?milliDcuSeconds,
      'shuffleStorageGbSeconds': ?shuffleStorageGbSeconds,
    };
  }

  factory BatchRuntimeInfoApproximateUsage.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeInfoApproximateUsage(
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milliAcceleratorSeconds: (() { final guardedValue = map['milliAcceleratorSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      milliDcuSeconds: (() { final guardedValue = map['milliDcuSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shuffleStorageGbSeconds: (() { final guardedValue = map['shuffleStorageGbSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
