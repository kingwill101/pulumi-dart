// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_lineage_job_input.dart';
import 'open_lineage_job_output.dart';

/// {@template pulumi_datalineage_open_lineage_job_open_lineage_job_args_doc}
/// The set of arguments for OpenLineageJob.
/// {@endtemplate}
/// {@macro pulumi_datalineage_open_lineage_job_open_lineage_job_args_doc}
class OpenLineageJobArgs {
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
  final pulumi.Input<String> namespace;
  /// Output datasets produced by this job.
  /// Structure is documented below.
  final pulumi.Input<List<OpenLineageJobOutput>?>? outputs;

  /// Creates a new [OpenLineageJobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the OpenLineage job.
  /// [inputs] Input datasets consumed by this job.
  /// [name] Name of the OpenLineage job.
  /// [namespace] Namespace of the OpenLineage job.
  /// [outputs] Output datasets produced by this job.
  const OpenLineageJobArgs({
    this.deletionPolicy,
    this.description,
    this.inputs,
    this.name,
    required this.namespace,
    this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'inputs': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobInput>, List<Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeList<OpenLineageJobInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'namespace': namespace,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<OpenLineageJobOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<OpenLineageJobOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenLineageJobArgs.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobInput>(guardedValue, (value) => OpenLineageJobInput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenLineageJobOutput>(guardedValue, (value) => OpenLineageJobOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
