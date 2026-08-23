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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [documentId] The client-assigned document ID to use for this document during creation.
  /// [fields] The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  /// [project] The ID of the project in which the resource belongs.
  const DocumentArgs({
    required this.collection,
    this.database,
    this.deletionPolicy,
    required this.documentId,
    required this.fields,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'database': ?database,
      'deletionPolicy': ?deletionPolicy,
      'documentId': documentId,
      'fields': fields,
      'project': ?project,
    };
  }

  factory DocumentArgs.fromMap(Map<String, dynamic> map) {
    return DocumentArgs(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentId: pulumi.Input.fromValue(map['documentId'] as String),
      fields: pulumi.Input.fromValue(map['fields'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
