// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_execution_aiplatform_v1beta1_args_doc}
/// Arguments for getExecution.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_execution_aiplatform_v1beta1_args_doc}
class GetExecutionAiplatformV1beta1Args {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExecutionAiplatformV1beta1Args].
  /// [executionId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  const GetExecutionAiplatformV1beta1Args({
    required this.executionId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetExecutionAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetExecutionAiplatformV1beta1Args(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataStoreId: pulumi.Input.fromValue(map['metadataStoreId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

