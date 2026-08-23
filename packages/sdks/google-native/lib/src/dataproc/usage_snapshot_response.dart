// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The usage snapshot represents the resources consumed by a workload at a specified time.
class UsageSnapshotResponse {
  /// Optional. Accelerator type being used, if any
  final pulumi.Input<String> acceleratorType;
  /// Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final pulumi.Input<String> milliAccelerator;
  /// Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final pulumi.Input<String> milliDcu;
  /// Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final pulumi.Input<String> milliDcuPremium;
  /// Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final pulumi.Input<String> shuffleStorageGb;
  /// Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  final pulumi.Input<String> shuffleStorageGbPremium;
  /// Optional. The timestamp of the usage snapshot.
  final pulumi.Input<String> snapshotTime;

  /// Creates a new [UsageSnapshotResponse].
  /// [acceleratorType] Optional. Accelerator type being used, if any
  /// [milliAccelerator] Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  /// [milliDcu] Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  /// [milliDcuPremium] Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  /// [shuffleStorageGb] Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  /// [shuffleStorageGbPremium] Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  /// [snapshotTime] Optional. The timestamp of the usage snapshot.
  const UsageSnapshotResponse({
    required this.acceleratorType,
    required this.milliAccelerator,
    required this.milliDcu,
    required this.milliDcuPremium,
    required this.shuffleStorageGb,
    required this.shuffleStorageGbPremium,
    required this.snapshotTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'milliAccelerator': milliAccelerator,
      'milliDcu': milliDcu,
      'milliDcuPremium': milliDcuPremium,
      'shuffleStorageGb': shuffleStorageGb,
      'shuffleStorageGbPremium': shuffleStorageGbPremium,
      'snapshotTime': snapshotTime,
    };
  }

  factory UsageSnapshotResponse.fromMap(Map<String, dynamic> map) {
    return UsageSnapshotResponse(
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      milliAccelerator: pulumi.Input.fromValue(map['milliAccelerator'] as String),
      milliDcu: pulumi.Input.fromValue(map['milliDcu'] as String),
      milliDcuPremium: pulumi.Input.fromValue(map['milliDcuPremium'] as String),
      shuffleStorageGb: pulumi.Input.fromValue(map['shuffleStorageGb'] as String),
      shuffleStorageGbPremium: pulumi.Input.fromValue(map['shuffleStorageGbPremium'] as String),
      snapshotTime: pulumi.Input.fromValue(map['snapshotTime'] as String),
    );
  }
}
