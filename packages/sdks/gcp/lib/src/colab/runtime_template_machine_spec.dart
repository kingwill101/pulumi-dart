// ignore_for_file: unused_element, unnecessary_cast


class RuntimeTemplateMachineSpec {
  /// The number of accelerators used by the runtime.
  final int? acceleratorCount;
  /// The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  final String? acceleratorType;
  /// The Compute Engine machine type selected for the runtime.
  final String? machineType;

  /// Creates a new [RuntimeTemplateMachineSpec].
  /// [acceleratorCount] The number of accelerators used by the runtime.
  /// [acceleratorType] The type of hardware accelerator used by the runtime. If specified, acceleratorCount must also be specified.
  /// [machineType] The Compute Engine machine type selected for the runtime.
  RuntimeTemplateMachineSpec({
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

  factory RuntimeTemplateMachineSpec.fromMap(Map<String, dynamic> map) {
    return RuntimeTemplateMachineSpec(
      acceleratorCount: map['acceleratorCount'] == null ? null : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}

