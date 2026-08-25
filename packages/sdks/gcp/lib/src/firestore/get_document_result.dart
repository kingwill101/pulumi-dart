// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDocument.
class GetDocumentResult {
  final String? collection;
  final String? createTime;
  final String? database;
  final String? deletionPolicy;
  final String? documentId;
  final String? fields;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? path;
  final String? project;
  final String? updateTime;

  /// Creates a new [GetDocumentResult].
  /// [collection] Optional.
  /// [createTime] Optional.
  /// [database] Optional.
  /// [deletionPolicy] Optional.
  /// [documentId] Optional.
  /// [fields] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [path] Optional.
  /// [project] Optional.
  /// [updateTime] Optional.
  const GetDocumentResult({
    this.collection,
    this.createTime,
    this.database,
    this.deletionPolicy,
    this.documentId,
    this.fields,
    this.id,
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
      'deletionPolicy': ?deletionPolicy,
      'documentId': ?documentId,
      'fields': ?fields,
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory GetDocumentResult.fromMap(Map<String, dynamic> map) {
    return GetDocumentResult(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentId: (() { final guardedValue = map['documentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
