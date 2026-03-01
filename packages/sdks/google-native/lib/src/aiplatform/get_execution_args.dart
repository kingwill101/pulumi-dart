// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_execution_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_execution_args_doc}
class GetExecutionArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExecutionArgs].
  /// [executionId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetExecutionArgs({
    required pulumi.Output<String> executionId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> metadataStoreId,
    pulumi.Output<String>? project,
  }) :
      executionId = pulumi.Input.asInput<String>(executionId),
      location = pulumi.Input.asInput<String>(location),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetExecutionArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs(
      executionId: pulumi.Output.create<String>(map['executionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      metadataStoreId: pulumi.Output.create<String>(map['metadataStoreId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

