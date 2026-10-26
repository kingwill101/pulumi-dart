// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContext.
class GetContextResult {
  /// Timestamp when this Context was created.
  final String? createTime;
  /// Description of the Context
  final String? description;
  /// User provided display name of the Context. May be up to 128 Unicode characters.
  final String? displayName;
  /// An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// The labels with user-defined metadata to organize your Contexts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Context (System labels are excluded).
  final Map<String, String>? labels;
  /// Properties of the Context. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  final Map<String, String>? metadata;
  /// Immutable. The resource name of the Context.
  final String? name;
  /// A list of resource names of Contexts that are parents of this Context. A Context may have at most 10 parent_contexts.
  final List<String>? parentContexts;
  /// The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String? schemaTitle;
  /// The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String? schemaVersion;
  /// Timestamp when this Context was last updated.
  final String? updateTime;

  /// Creates a new [GetContextResult].
  /// [createTime] Timestamp when this Context was created.
  /// [description] Description of the Context
  /// [displayName] User provided display name of the Context. May be up to 128 Unicode characters.
  /// [etag] An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Contexts. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Context (System labels are excluded).
  /// [metadata] Properties of the Context. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  /// [name] Immutable. The resource name of the Context.
  /// [parentContexts] A list of resource names of Contexts that are parents of this Context. A Context may have at most 10 parent_contexts.
  /// [schemaTitle] The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [schemaVersion] The version of the schema in schema_name to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [updateTime] Timestamp when this Context was last updated.
  const GetContextResult({
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.metadata,
    this.name,
    this.parentContexts,
    this.schemaTitle,
    this.schemaVersion,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'metadata': ?metadata,
      'name': ?name,
      'parentContexts': ?parentContexts,
      'schemaTitle': ?schemaTitle,
      'schemaVersion': ?schemaVersion,
      'updateTime': ?updateTime,
    };
  }

  factory GetContextResult.fromMap(Map<String, dynamic> map) {
    return GetContextResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentContexts: (() { final guardedValue = map['parentContexts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      schemaTitle: (() { final guardedValue = map['schemaTitle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
