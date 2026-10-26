// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExecution.
class GetExecutionResult {
  /// Timestamp when this Execution was created.
  final String? createTime;
  /// Description of the Execution
  final String? description;
  /// User provided display name of the Execution. May be up to 128 Unicode characters.
  final String? displayName;
  /// An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String? etag;
  /// The labels with user-defined metadata to organize your Executions. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Execution (System labels are excluded).
  final Map<String, String>? labels;
  /// Properties of the Execution. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  final Map<String, String>? metadata;
  /// The resource name of the Execution.
  final String? name;
  /// The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String? schemaTitle;
  /// The version of the schema in `schema_title` to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final String? schemaVersion;
  /// The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
  final String? state;
  /// Timestamp when this Execution was last updated.
  final String? updateTime;

  /// Creates a new [GetExecutionResult].
  /// [createTime] Timestamp when this Execution was created.
  /// [description] Description of the Execution
  /// [displayName] User provided display name of the Execution. May be up to 128 Unicode characters.
  /// [etag] An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] The labels with user-defined metadata to organize your Executions. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Execution (System labels are excluded).
  /// [metadata] Properties of the Execution. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  /// [name] The resource name of the Execution.
  /// [schemaTitle] The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [schemaVersion] The version of the schema in `schema_title` to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  /// [state] The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
  /// [updateTime] Timestamp when this Execution was last updated.
  const GetExecutionResult({
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.labels,
    this.metadata,
    this.name,
    this.schemaTitle,
    this.schemaVersion,
    this.state,
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
      'schemaTitle': ?schemaTitle,
      'schemaVersion': ?schemaVersion,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaTitle: (() { final guardedValue = map['schemaTitle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
