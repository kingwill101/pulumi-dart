// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_context_aiplatform_v1beta1_args_doc}
class GetContextAiplatformV1beta1Args {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContextAiplatformV1beta1Args].
  /// [contextId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  const GetContextAiplatformV1beta1Args({
    required this.contextId,
    required this.location,
    required this.metadataStoreId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextId': contextId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetContextAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetContextAiplatformV1beta1Args(
      contextId: pulumi.Input.fromValue(map['contextId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataStoreId: pulumi.Input.fromValue(map['metadataStoreId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
