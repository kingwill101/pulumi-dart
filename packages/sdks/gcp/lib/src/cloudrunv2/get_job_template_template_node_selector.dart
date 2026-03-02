// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateNodeSelector {
  /// The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/jobs/gpu for configuring GPU.
  final pulumi.Input<String> accelerator;

  /// Creates a new [GetJobTemplateTemplateNodeSelector].
  /// [accelerator] The GPU to attach to an instance. See https://cloud.google.com/run/docs/configuring/jobs/gpu for configuring GPU.
  GetJobTemplateTemplateNodeSelector({
    required this.accelerator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerator': accelerator,
    };
  }

  factory GetJobTemplateTemplateNodeSelector.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateNodeSelector(
      accelerator: (map['accelerator'] as String).input(),
    );
  }
}

