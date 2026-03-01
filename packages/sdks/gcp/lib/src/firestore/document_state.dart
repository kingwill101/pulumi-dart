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
    pulumi.Output<String>? collection,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? database,
    pulumi.Output<String>? documentId,
    pulumi.Output<String>? fields,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      collection = pulumi.Input.asOptionalInput<String>(collection),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      database = pulumi.Input.asOptionalInput<String>(database),
      documentId = pulumi.Input.asOptionalInput<String>(documentId),
      fields = pulumi.Input.asOptionalInput<String>(fields),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      collection: map['collection'] == null ? null : pulumi.Output.create<String>(map['collection'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      documentId: map['documentId'] == null ? null : pulumi.Output.create<String>(map['documentId'] as String),
      fields: map['fields'] == null ? null : pulumi.Output.create<String>(map['fields'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

