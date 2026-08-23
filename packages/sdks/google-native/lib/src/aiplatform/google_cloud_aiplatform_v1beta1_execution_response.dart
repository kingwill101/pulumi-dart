// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Instance of a general execution.
class GoogleCloudAiplatformV1beta1ExecutionResponse {
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

  /// Creates a new [GoogleCloudAiplatformV1beta1ExecutionResponse].
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
  const GoogleCloudAiplatformV1beta1ExecutionResponse({
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

  factory GoogleCloudAiplatformV1beta1ExecutionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExecutionResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      schemaTitle: pulumi.Input.fromValue(map['schemaTitle'] as String),
      schemaVersion: pulumi.Input.fromValue(map['schemaVersion'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
