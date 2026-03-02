// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance of a general execution.
class GoogleCloudAiplatformV1ExecutionResponse {
  /// Timestamp when this Execution was created.
  final pulumi.Input<String> createTime;
  /// Description of the Execution
  final pulumi.Input<String> description;
  /// User provided display name of the Execution. May be up to 128 Unicode characters.
  final pulumi.Input<String> displayName;
  /// An eTag used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String> etag;
  /// The labels with user-defined metadata to organize your Executions. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one Execution (System labels are excluded).
  final pulumi.Input<Map<String, String>> labels;
  /// Properties of the Execution. Top level metadata keys' heading and trailing spaces will be trimmed. The size of this field should not exceed 200KB.
  final pulumi.Input<Map<String, String>> metadata;
  /// The resource name of the Execution.
  final pulumi.Input<String> name;
  /// The title of the schema describing the metadata. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final pulumi.Input<String> schemaTitle;
  /// The version of the schema in `schema_title` to use. Schema title and version is expected to be registered in earlier Create Schema calls. And both are used together as unique identifiers to identify schemas within the local metadata store.
  final pulumi.Input<String> schemaVersion;
  /// The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
  final pulumi.Input<String> state;
  /// Timestamp when this Execution was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudAiplatformV1ExecutionResponse].
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
  GoogleCloudAiplatformV1ExecutionResponse({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.labels,
    required this.metadata,
    required this.name,
    required this.schemaTitle,
    required this.schemaVersion,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'etag': etag,
      'labels': labels,
      'metadata': metadata,
      'name': name,
      'schemaTitle': schemaTitle,
      'schemaVersion': schemaVersion,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudAiplatformV1ExecutionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExecutionResponse(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      etag: (map['etag'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      schemaTitle: (map['schemaTitle'] as String).input(),
      schemaVersion: (map['schemaVersion'] as String).input(),
      state: (map['state'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

