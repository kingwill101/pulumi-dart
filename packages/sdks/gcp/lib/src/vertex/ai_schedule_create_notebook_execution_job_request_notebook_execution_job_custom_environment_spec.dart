// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_machine_spec.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_network_spec.dart';
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job_custom_environment_spec_persistent_disk_spec.dart';

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec {
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec?>? machineSpec;
  /// Network spec.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec?>? networkSpec;
  /// Represents the spec of persistent disk options.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec?>? persistentDiskSpec;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec].
  /// [machineSpec] Specification of a single machine.
  /// [networkSpec] Network spec.
  /// [persistentDiskSpec] Represents the spec of persistent disk options.
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec({
    this.machineSpec,
    this.networkSpec,
    this.persistentDiskSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineSpec': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'networkSpec': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec, Map<String, dynamic>>(networkSpec, (value) => value.toMap()),
      'persistentDiskSpec': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec, Map<String, dynamic>>(persistentDiskSpec, (value) => value.toMap()),
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpec(
      machineSpec: (() { final guardedValue = map['machineSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecMachineSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkSpec: (() { final guardedValue = map['networkSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecNetworkSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistentDiskSpec: (() { final guardedValue = map['persistentDiskSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobCustomEnvironmentSpecPersistentDiskSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
