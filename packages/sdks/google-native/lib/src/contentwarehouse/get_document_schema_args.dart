// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contentwarehouse_v1_get_document_schema_args_doc}
/// Arguments for getDocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_get_document_schema_args_doc}
class GetDocumentSchemaArgs {
  final pulumi.Input<String> documentSchemaId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentSchemaArgs].
  /// [documentSchemaId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentSchemaArgs({
    required this.documentSchemaId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documentSchemaId': documentSchemaId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentSchemaArgs(
      documentSchemaId: pulumi.Input.fromValue(
        map['documentSchemaId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
