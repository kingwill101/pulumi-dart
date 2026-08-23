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
  const GetContextArgs({
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

  factory GetContextArgs.fromMap(Map<String, dynamic> map) {
    return GetContextArgs(
      contextId: pulumi.Input.fromValue(map['contextId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      metadataStoreId: pulumi.Input.fromValue(map['metadataStoreId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
