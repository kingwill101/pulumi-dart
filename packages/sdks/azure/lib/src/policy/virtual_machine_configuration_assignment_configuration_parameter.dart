// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineConfigurationAssignmentConfigurationParameter {
  /// The name of the configuration parameter to check.
  final String name;
  /// The value to check the configuration parameter with.
  final String value;

  /// Creates a new [VirtualMachineConfigurationAssignmentConfigurationParameter].
  /// [name] The name of the configuration parameter to check.
  /// [value] The value to check the configuration parameter with.
  VirtualMachineConfigurationAssignmentConfigurationParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory VirtualMachineConfigurationAssignmentConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationAssignmentConfigurationParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

