// ignore_for_file: unused_element, unnecessary_cast


class RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig {
  /// Count of cores of this accelerator.
  final int? coreCount;
  /// Accelerator model. For valid values, see
  /// `https://cloud.google.com/vertex-ai/docs/workbench/reference/
  /// rest/v1/projects.locations.runtimes#AcceleratorType`
  final String? type;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Accelerator model. For valid values, see
  RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?type,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as int,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

