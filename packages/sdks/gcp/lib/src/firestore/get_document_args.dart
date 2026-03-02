// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_get_document_get_document_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_firestore_get_document_get_document_args_doc}
class GetDocumentArgs {
  /// The name of the collection of documents.
  final pulumi.Input<String> collection;
  /// The name of the Firestore database.
  final pulumi.Input<String> database;
  /// The id of the document to get.
  final pulumi.Input<String> documentId;
  /// The project in which the database resides.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentArgs].
  /// [collection] The name of the collection of documents.
  /// [database] The name of the Firestore database.
  /// [documentId] The id of the document to get.
  /// [project] The project in which the database resides.
  GetDocumentArgs({
    required this.collection,
    required this.database,
    required this.documentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'database': database,
      'documentId': documentId,
      'project': ?project,
    };
  }

  factory GetDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetDocumentArgs(
      collection: (map['collection'] as String).input(),
      database: (map['database'] as String).input(),
      documentId: (map['documentId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

