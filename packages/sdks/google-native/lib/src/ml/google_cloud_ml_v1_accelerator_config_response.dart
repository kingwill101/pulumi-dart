// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about [accelerators for training](/ml-engine/docs/using-gpus) and [accelerators for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
class GoogleCloudMlV1AcceleratorConfigResponse {
  /// The number of accelerators to attach to each machine running the job.
  final pulumi.Input<String> count;
  /// The type of accelerator to use.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudMlV1AcceleratorConfigResponse].
  /// [count] The number of accelerators to attach to each machine running the job.
  /// [type] The type of accelerator to use.
  GoogleCloudMlV1AcceleratorConfigResponse({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'type': type,
    };
  }

  factory GoogleCloudMlV1AcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AcceleratorConfigResponse(
      count: (map['count'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

