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
    this.project,
    required this.schemaId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'schemaId': schemaId,
      'view': ?view,
    };
  }

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schemaId: (map['schemaId'] as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
    );
  }
}

