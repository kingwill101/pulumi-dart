// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_context_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_context_args_doc}
class GetContextArgs {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContextArgs].
  /// [contextId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetContextArgs({
    required pulumi.Output<String> contextId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> metadataStoreId,
    pulumi.Output<String>? project,
  }) :
      contextId = pulumi.Input.asInput<String>(contextId),
      location = pulumi.Input.asInput<String>(location),
      metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextId': contextId,
      'location': location,
      'metadataStoreId': metadataStoreId,
      'project': ?project,
    };
  }

  factory GetContextArgs.fromMap(Map<String, dynamic> map) {
    return GetContextArgs(
      contextId: pulumi.Output.create<String>(map['contextId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      metadataStoreId: pulumi.Output.create<String>(map['metadataStoreId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

