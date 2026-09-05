// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_assignment_configuration_parameter.dart';

class VirtualMachineConfigurationAssignmentConfiguration {
  /// The assignment type for the Guest Configuration Assignment. Possible values are `Audit`, `ApplyAndAutoCorrect`, `ApplyAndMonitor` and `DeployAndAutoCorrect`.
  final pulumi.Input<String?>? assignmentType;
  /// The content hash for the Guest Configuration package.
  ///
  /// &gt; **Note:** The value for `contentHash` should be the SH256SUM for the zip file in the `contentUri` and must be in upper case.
  final pulumi.Input<String?>? contentHash;
  /// The content URI where the Guest Configuration package is stored.
  ///
  /// &gt; **Note:** When deploying a Custom Guest Configuration package the `contentHash` and `contentUri` fields must be defined. For Built-in Guest Configuration packages, such as the `AzureWindowsBaseline` package, the `contentHash` and `contentUri` should not be defined, rather these fields will be returned after the Built-in Guest Configuration package has been provisioned. For more information on guest configuration assignments please see the [product documentation](https://docs.microsoft.com/azure/governance/policy/concepts/guest-configuration-assignments).
  final pulumi.Input<String?>? contentUri;
  /// One or more `parameter` blocks as defined below which define what configuration parameters and values against.
  final pulumi.Input<List<VirtualMachineConfigurationAssignmentConfigurationParameter>?>? parameters;
  /// The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
  final pulumi.Input<String?>? version;

  /// Creates a new [VirtualMachineConfigurationAssignmentConfiguration].
  /// [assignmentType] The assignment type for the Guest Configuration Assignment. Possible values are `Audit`, `ApplyAndAutoCorrect`, `ApplyAndMonitor` and `DeployAndAutoCorrect`.
  /// [contentHash] The content hash for the Guest Configuration package.
  /// [contentUri] The content URI where the Guest Configuration package is stored.
  /// [parameters] One or more `parameter` blocks as defined below which define what configuration parameters and values against.
  /// [version] The version of the Guest Configuration that will be assigned in this Guest Configuration Assignment.
  const VirtualMachineConfigurationAssignmentConfiguration({
    this.assignmentType,
    this.contentHash,
    this.contentUri,
    this.parameters,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'contentHash': ?contentHash,
      'contentUri': ?contentUri,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineConfigurationAssignmentConfigurationParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<VirtualMachineConfigurationAssignmentConfigurationParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory VirtualMachineConfigurationAssignmentConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationAssignmentConfiguration(
      assignmentType: (() { final guardedValue = map['assignmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentHash: (() { final guardedValue = map['contentHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentUri: (() { final guardedValue = map['contentUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineConfigurationAssignmentConfigurationParameter>(guardedValue, (value) => VirtualMachineConfigurationAssignmentConfigurationParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
