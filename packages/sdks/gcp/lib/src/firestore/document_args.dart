// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_document_document_args_doc}
/// The set of arguments for Document.
/// {@endtemplate}
/// {@macro pulumi_firestore_document_document_args_doc}
class DocumentArgs {
  /// The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  final pulumi.Input<String> collection;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
  /// The client-assigned document ID to use for this document during creation.
  final pulumi.Input<String> documentId;
  /// The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  final pulumi.Input<String> fields;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DocumentArgs].
  /// [collection] The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [documentId] The client-assigned document ID to use for this document during creation.
  /// [fields] The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  /// [project] The ID of the project in which the resource belongs.
  DocumentArgs({
    required pulumi.Output<String> collection,
    pulumi.Output<String>? database,
    required pulumi.Output<String> documentId,
    required pulumi.Output<String> fields,
    pulumi.Output<String>? project,
  }) :
      collection = pulumi.Input.asInput<String>(collection),
      database = pulumi.Input.asOptionalInput<String>(database),
      documentId = pulumi.Input.asInput<String>(documentId),
      fields = pulumi.Input.asInput<String>(fields),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'database': ?database,
      'documentId': documentId,
      'fields': fields,
      'project': ?project,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      collection: pulumi.Output.create<String>(map['collection'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      documentId: pulumi.Output.create<String>(map['documentId'] as String),
      fields: pulumi.Output.create<String>(map['fields'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

