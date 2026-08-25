// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_machine_spec.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_network_spec.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_persistent_disk_spec.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec {
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec?>? machineSpec;
  /// Network spec.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec?>? networkSpec;
  /// Represents the spec of persistent disk options.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec?>? persistentDiskSpec;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec].
  /// [machineSpec] Specification of a single machine.
  /// [networkSpec] Network spec.
  /// [persistentDiskSpec] Represents the spec of persistent disk options.
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'persistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec, Map<String, dynamic>>(persistentDiskSpec, (value) => value.toMap()),
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec(
      machineSpec: (() { final guardedValue = map['machineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSpec: (() { final guardedValue = map['networkSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentDiskSpec: (() { final guardedValue = map['persistentDiskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
