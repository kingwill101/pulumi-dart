// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An accelerator configuration for a VM instance Definition of a hardware accelerator. Note that there is no check on `type` and `core_count` combinations. TPUs are not supported. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.
class AcceleratorConfigResponseNotebooksV2 {
  /// Optional. Count of cores of this accelerator.
  final pulumi.Input<String> coreCount;
  /// Optional. Type of this accelerator.
  final pulumi.Input<String> type;

  /// Creates a new [AcceleratorConfigResponseNotebooksV2].
  /// [coreCount] Optional. Count of cores of this accelerator.
  /// [type] Optional. Type of this accelerator.
  AcceleratorConfigResponseNotebooksV2({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': coreCount,
      'type': type,
    };
  }

  factory AcceleratorConfigResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponseNotebooksV2(
      coreCount: pulumi.Input.fromValue(map['coreCount'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

