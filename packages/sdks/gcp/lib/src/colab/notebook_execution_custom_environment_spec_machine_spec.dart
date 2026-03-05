// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionCustomEnvironmentSpecMachineSpec {
  /// The number of accelerators used by the runtime.
  final pulumi.Input<int>? acceleratorCount;
  /// The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  final pulumi.Input<String>? acceleratorType;
  /// The Compute Engine machine type selected for the runtime.
  final pulumi.Input<String>? machineType;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpecMachineSpec].
  /// [acceleratorCount] The number of accelerators used by the runtime.
  /// [acceleratorType] The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  /// [machineType] The Compute Engine machine type selected for the runtime.
  NotebookExecutionCustomEnvironmentSpecMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
    };
  }

  factory NotebookExecutionCustomEnvironmentSpecMachineSpec.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpecMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

