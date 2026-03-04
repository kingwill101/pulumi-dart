// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  final pulumi.Input<String> accelerator;

  /// Creates a new [GetWorkerPoolTemplateNodeSelector].
  /// [accelerator] The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/services/gpu for configuring GPU.
  GetWorkerPoolTemplateNodeSelector({required this.accelerator});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accelerator': accelerator};
  }

  factory GetWorkerPoolTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateNodeSelector(
      accelerator: pulumi.Input.fromValue(map['accelerator'] as String),
    );
  }
}
