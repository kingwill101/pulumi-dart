// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineConfigurationAssignmentConfigurationParameter {
  /// The name of the configuration parameter to check.
  final pulumi.Input<String> name;
  /// The value to check the configuration parameter with.
  final pulumi.Input<String> value;

  /// Creates a new [VirtualMachineConfigurationAssignmentConfigurationParameter].
  /// [name] The name of the configuration parameter to check.
  /// [value] The value to check the configuration parameter with.
  const VirtualMachineConfigurationAssignmentConfigurationParameter({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
