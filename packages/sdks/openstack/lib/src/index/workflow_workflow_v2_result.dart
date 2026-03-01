// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by workflowWorkflowV2.
class WorkflowWorkflowV2Result {
  /// The date the workflow was created.
  final String createdAt;
  /// The workflow definition in Mistral v2 DSL.
  final String definition;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A set of input parameters required for workflow execution.
  final String input;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String namespace;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// Scope (private or public).
  final String scope;
  /// A set of string tags for the workflow.
  final List<String> tags;

  /// Creates a new [WorkflowWorkflowV2Result].
  /// [createdAt] The date the workflow was created.
  /// [definition] The workflow definition in Mistral v2 DSL.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [input] A set of input parameters required for workflow execution.
  /// [name] See Argument Reference above.
  /// [namespace] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [scope] Scope (private or public).
  /// [tags] A set of string tags for the workflow.
  WorkflowWorkflowV2Result({
    required this.createdAt,
    required this.definition,
    required this.id,
    required this.input,
    required this.name,
    required this.namespace,
    required this.projectId,
    required this.region,
    required this.scope,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'definition': definition,
      'id': id,
      'input': input,
      'name': name,
      'namespace': namespace,
      'projectId': projectId,
      'region': region,
      'scope': scope,
      'tags': tags,
    };
  }

  factory WorkflowWorkflowV2Result.fromMap(Map<String, dynamic> map) {
    return WorkflowWorkflowV2Result(
      createdAt: map['createdAt'] as String,
      definition: map['definition'] as String,
      id: map['id'] as String,
      input: map['input'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      scope: map['scope'] as String,
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}

