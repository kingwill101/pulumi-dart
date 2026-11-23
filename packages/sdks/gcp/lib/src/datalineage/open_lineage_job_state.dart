// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_input.dart';
import 'open_lineage_job_output.dart';

/// Input properties used for looking up and filtering OpenLineageJob resources.
class OpenLineageJobState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the OpenLineage job.
  final pulumi.Input<String?>? description;
  /// Input datasets consumed by this job.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobInput>?>? inputs;
  /// Name of the OpenLineage job.
  final pulumi.Input<String?>? name;
  /// Namespace of the OpenLineage job.
  final pulumi.Input<String?>? namespace;
  /// Output datasets produced by this job.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutput>?>? outputs;
  /// (Output)
  /// Data Lineage process identifier.
  final pulumi.Input<String?>? process;
  /// (Output)
  /// Latest Data Lineage run identifier.
  final pulumi.Input<String?>? run;

  /// Creates a new [OpenLineageJobState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the OpenLineage job.
  /// [inputs] Input datasets consumed by this job.
  /// [name] Name of the OpenLineage job.
  /// [namespace] Namespace of the OpenLineage job.
  /// [outputs] Output datasets produced by this job.
  /// [process] (Output)
  /// [run] (Output)
  const OpenLineageJobState({
    this.deletionPolicy,
    this.description,
    this.inputs,
    this.name,
    this.namespace,
    this.outputs,
    this.process,
    this.run,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<OpenLineageJobInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namespace': ?namespace,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<OpenLineageJobOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'process': ?process,
      'run': ?run,
    };
  }

  factory OpenLineageJobState.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobInput>(guardedValue, (value) => OpenLineageJobInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutput>(guardedValue, (value) => OpenLineageJobOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      process: (() { final guardedValue = map['process']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      run: (() { final guardedValue = map['run']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
