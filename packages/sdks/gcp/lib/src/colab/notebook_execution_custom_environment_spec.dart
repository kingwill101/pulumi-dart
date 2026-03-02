// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_execution_custom_environment_spec_machine_spec.dart';
import 'notebook_execution_custom_environment_spec_network_spec.dart';
import 'notebook_execution_custom_environment_spec_persistent_disk_spec.dart';

class NotebookExecutionCustomEnvironmentSpec {
  /// 'The machine configuration of the runtime.'
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpecMachineSpec>? machineSpec;
  /// The network configuration for the runtime.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpecNetworkSpec>? networkSpec;
  /// The configuration for the data disk of the runtime.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec>? persistentDiskSpec;

  /// Creates a new [NotebookExecutionCustomEnvironmentSpec].
  /// [machineSpec] 'The machine configuration of the runtime.'
  /// [networkSpec] The network configuration for the runtime.
  /// [persistentDiskSpec] The configuration for the data disk of the runtime.
  NotebookExecutionCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionCustomEnvironmentSpecMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionCustomEnvironmentSpecNetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'persistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec, Map<String, dynamic>>(persistentDiskSpec, (value) => value.toMap()),
    };
  }

  factory NotebookExecutionCustomEnvironmentSpec.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionCustomEnvironmentSpec(
      machineSpec: map['machineSpec'] == null ? null : (NotebookExecutionCustomEnvironmentSpecMachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())).input(),
      networkSpec: map['networkSpec'] == null ? null : (NotebookExecutionCustomEnvironmentSpecNetworkSpec.fromMap((map['networkSpec']! as Map).cast<String, dynamic>())).input(),
      persistentDiskSpec: map['persistentDiskSpec'] == null ? null : (NotebookExecutionCustomEnvironmentSpecPersistentDiskSpec.fromMap((map['persistentDiskSpec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

