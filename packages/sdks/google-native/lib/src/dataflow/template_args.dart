// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment.dart';

/// {@template pulumi_dataflow_v1b3_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_template_args_doc}
class TemplateArgs {
  /// The runtime environment for the job.
  final pulumi.Input<RuntimeEnvironment>? environment;
  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final pulumi.Input<String> gcsPath;
  /// The job name to use for the created job.
  final pulumi.Input<String> jobName;
  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  final pulumi.Input<String>? location;
  /// The runtime parameters to pass to the job.
  final pulumi.Input<Map<String, String>>? parameters;
  final pulumi.Input<String>? project;

  /// Creates a new [TemplateArgs].
  /// [environment] The runtime environment for the job.
  /// [gcsPath] A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [jobName] The job name to use for the created job.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  /// [parameters] The runtime parameters to pass to the job.
  /// [project] Optional.
  TemplateArgs({
    this.environment,
    required this.gcsPath,
    required this.jobName,
    this.location,
    this.parameters,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': ?pulumi.Input.mapOptionalInputValue<RuntimeEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'gcsPath': gcsPath,
      'jobName': jobName,
      'location': ?location,
      'parameters': ?parameters,
      'project': ?project,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsPath: pulumi.Input.fromValue(map['gcsPath'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

