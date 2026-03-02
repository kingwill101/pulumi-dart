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
    required this.collection,
    this.database,
    required this.documentId,
    required this.fields,
    this.project,
  });

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
      collection: (map['collection'] as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      documentId: (map['documentId'] as String).input(),
      fields: (map['fields'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

