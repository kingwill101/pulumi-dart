// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_schema_args_doc}
class GetSchemaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetSchemaArgs].
  /// [project] Optional.
  /// [schemaId] Required.
  /// [view] Optional.
  GetSchemaArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> schemaId,
    pulumi.Output<String>? view,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asInput<String>(schemaId),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'schemaId': schemaId,
      'view': ?view,
    };
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

