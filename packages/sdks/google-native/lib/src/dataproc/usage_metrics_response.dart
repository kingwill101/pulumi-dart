// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Usage metrics represent approximate total resources consumed by a workload.
class UsageMetricsResponse {
  /// Optional. Accelerator type being used, if any
  final pulumi.Input<String> acceleratorType;
  /// Optional. Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final pulumi.Input<String> milliAcceleratorSeconds;
  /// Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final pulumi.Input<String> milliDcuSeconds;
  /// Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  final pulumi.Input<String> shuffleStorageGbSeconds;

  /// Creates a new [UsageMetricsResponse].
  /// [acceleratorType] Optional. Accelerator type being used, if any
  /// [milliAcceleratorSeconds] Optional. Accelerator usage in (milliAccelerator x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  /// [milliDcuSeconds] Optional. DCU (Dataproc Compute Units) usage in (milliDCU x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  /// [shuffleStorageGbSeconds] Optional. Shuffle storage usage in (GB x seconds) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  UsageMetricsResponse({
    required this.acceleratorType,
    required this.milliAcceleratorSeconds,
    required this.milliDcuSeconds,
    required this.shuffleStorageGbSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'milliAcceleratorSeconds': milliAcceleratorSeconds,
      'milliDcuSeconds': milliDcuSeconds,
      'shuffleStorageGbSeconds': shuffleStorageGbSeconds,
    };
  }

  factory UsageMetricsResponse.fromMap(Map<String, dynamic> map) {
    return UsageMetricsResponse(
      acceleratorType: (map['acceleratorType'] as String).input(),
      milliAcceleratorSeconds: (map['milliAcceleratorSeconds'] as String).input(),
      milliDcuSeconds: (map['milliDcuSeconds'] as String).input(),
      shuffleStorageGbSeconds: (map['shuffleStorageGbSeconds'] as String).input(),
    );
  }
}

