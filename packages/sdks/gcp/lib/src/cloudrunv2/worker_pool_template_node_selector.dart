// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  final pulumi.Input<String> accelerator;

  /// Creates a new [WorkerPoolTemplateNodeSelector].
  /// [accelerator] The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  const WorkerPoolTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': accelerator,
    };
  }

  factory WorkerPoolTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplateNodeSelector(
      accelerator: pulumi.Input.fromValue(map['accelerator'] as String),
    );
  }
}

