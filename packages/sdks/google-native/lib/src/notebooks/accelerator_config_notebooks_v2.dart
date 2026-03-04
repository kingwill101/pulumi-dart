// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_type_notebooks_v2.dart';

/// An accelerator configuration for a VM instance Definition of a hardware accelerator. Note that there is no check on `type` and `core_count` combinations. TPUs are not supported. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination.
class AcceleratorConfigNotebooksV2 {
  /// Optional. Count of cores of this accelerator.
  final pulumi.Input<String>? coreCount;

  /// Optional. Type of this accelerator.
  final pulumi.Input<AcceleratorConfigTypeNotebooksV2>? type;

  /// Creates a new [AcceleratorConfigNotebooksV2].
  /// [coreCount] Optional. Count of cores of this accelerator.
  /// [type] Optional. Type of this accelerator.
  AcceleratorConfigNotebooksV2({this.coreCount, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            AcceleratorConfigTypeNotebooksV2,
            String
          >(type, (value) => value.wireValue),
    };
  }

  factory AcceleratorConfigNotebooksV2.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigNotebooksV2(
      coreCount: (() {
        final guardedValue = map['coreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AcceleratorConfigTypeNotebooksV2.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
