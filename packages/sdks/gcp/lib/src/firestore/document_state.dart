// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Document resources.
class DocumentState {
  /// The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  final pulumi.Input<String>? collection;
  /// Creation timestamp in RFC3339 format.
  final pulumi.Input<String>? createTime;
  /// The Firestore database id. Defaults to `"(default)"`.
  final pulumi.Input<String>? database;
  /// The client-assigned document ID to use for this document during creation.
  final pulumi.Input<String>? documentId;
  /// The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  final pulumi.Input<String>? fields;
  /// A server defined name for this document. Format:
  /// `projects/{{project_id}}/databases/{{database_id}}/documents/{{path}}/{{document_id}}`
  final pulumi.Input<String>? name;
  /// A relative path to the collection this document exists within
  final pulumi.Input<String>? path;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Last update timestamp in RFC3339 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DocumentState].
  /// [collection] The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  /// [createTime] Creation timestamp in RFC3339 format.
  /// [database] The Firestore database id. Defaults to `"(default)"`.
  /// [documentId] The client-assigned document ID to use for this document during creation.
  /// [fields] The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  /// [name] A server defined name for this document. Format:
  /// [path] A relative path to the collection this document exists within
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Last update timestamp in RFC3339 format.
  DocumentState({
    this.collection,
    this.createTime,
    this.database,
    this.documentId,
    this.fields,
    this.name,
    this.path,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'createTime': ?createTime,
      'database': ?database,
      'documentId': ?documentId,
      'fields': ?fields,
      'name': ?name,
      'path': ?path,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory DocumentState.fromMap(Map<String, dynamic> map) {
    return DocumentState(
      collection: map['collection'] == null ? null : (map['collection']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      database: map['database'] == null ? null : (map['database']! as String).input(),
      documentId: map['documentId'] == null ? null : (map['documentId']! as String).input(),
      fields: map['fields'] == null ? null : (map['fields']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

