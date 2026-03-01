// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// Describes the level of platform logging to apply to calls and call responses during
  /// executions of this workflow. If both the workflow and the execution specify a logging level,
  /// the execution level takes precedence.
  /// Possible values are: `CALL_LOG_LEVEL_UNSPECIFIED`, `LOG_ALL_CALLS`, `LOG_ERRORS_ONLY`, `LOG_NONE`.
  final pulumi.Input<String>? callLogLevel;
  /// The timestamp of when the workflow was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// The KMS key used to encrypt workflow and execution data.
  /// Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  final pulumi.Input<String>? cryptoKeyName;
  final pulumi.Input<bool>? deletionProtection;
  /// Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Describes the level of execution history to be stored for this workflow. This configuration
  /// determines how much information about workflow executions is preserved. If not specified,
  /// defaults to EXECUTION_HISTORY_LEVEL_UNSPECIFIED.
  /// Possible values are: `EXECUTION_HISTORY_LEVEL_UNSPECIFIED`, `EXECUTION_HISTORY_BASIC`, `EXECUTION_HISTORY_DETAILED`.
  final pulumi.Input<String>? executionHistoryLevel;
  /// A set of key/value label pairs to assign to this Workflow.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Workflow.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the
  /// specified prefix. If this and name are unspecified, a random value is chosen for the name.
  final pulumi.Input<String>? namePrefix;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the workflow.
  final pulumi.Input<String>? region;
  /// The revision of the workflow. A new one is generated if the service account or source contents is changed.
  final pulumi.Input<String>? revisionId;
  /// Name of the service account associated with the latest workflow version. This service
  /// account represents the identity of the workflow and determines what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account} or {account}.
  /// Using - as a wildcard for the {project} or not providing one at all will infer the project from the account.
  /// The {account} value can be the email address or the unique_id of the service account.
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow revision.
  final pulumi.Input<String>? serviceAccount;
  /// Workflow code to be executed. The size limit is 128KB.
  final pulumi.Input<String>? sourceContents;
  /// State of the workflow deployment.
  final pulumi.Input<String>? state;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in
  /// the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? tags;
  /// The timestamp of when the workflow was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;
  /// User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  final pulumi.Input<Map<String, String>>? userEnvVars;

  /// Creates a new [WorkflowState].
  /// [callLogLevel] Describes the level of platform logging to apply to calls and call responses during
  /// [createTime] The timestamp of when the workflow was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [cryptoKeyName] The KMS key used to encrypt workflow and execution data.
  /// [deletionProtection] Optional.
  /// [description] Description of the workflow provided by the user. Must be at most 1000 unicode characters long.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [executionHistoryLevel] Describes the level of execution history to be stored for this workflow. This configuration
  /// [labels] A set of key/value label pairs to assign to this Workflow.
  /// [name] Name of the Workflow.
  /// [namePrefix] Creates a unique name beginning with the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the workflow.
  /// [revisionId] The revision of the workflow. A new one is generated if the service account or source contents is changed.
  /// [serviceAccount] Name of the service account associated with the latest workflow version. This service
  /// [sourceContents] Workflow code to be executed. The size limit is 128KB.
  /// [state] State of the workflow deployment.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition
  /// [updateTime] The timestamp of when the workflow was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [userEnvVars] User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 4KiB. Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
  WorkflowState({
    pulumi.Output<String>? callLogLevel,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? executionHistoryLevel,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revisionId,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? sourceContents,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? updateTime,
    pulumi.Output<Map<String, String>>? userEnvVars,
  }) :
      callLogLevel = pulumi.Input.asOptionalInput<String>(callLogLevel),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      executionHistoryLevel = pulumi.Input.asOptionalInput<String>(executionHistoryLevel),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      sourceContents = pulumi.Input.asOptionalInput<String>(sourceContents),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      userEnvVars = pulumi.Input.asOptionalInput<Map<String, String>>(userEnvVars);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callLogLevel': ?callLogLevel,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'executionHistoryLevel': ?executionHistoryLevel,
      'labels': ?labels,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'revisionId': ?revisionId,
      'serviceAccount': ?serviceAccount,
      'sourceContents': ?sourceContents,
      'state': ?state,
      'tags': ?tags,
      'updateTime': ?updateTime,
      'userEnvVars': ?userEnvVars,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      callLogLevel: map['callLogLevel'] == null ? null : pulumi.Output.create<String>(map['callLogLevel'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      executionHistoryLevel: map['executionHistoryLevel'] == null ? null : pulumi.Output.create<String>(map['executionHistoryLevel'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      sourceContents: map['sourceContents'] == null ? null : pulumi.Output.create<String>(map['sourceContents'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      userEnvVars: map['userEnvVars'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userEnvVars'] as Map).cast<String, String>()),
    );
  }
}

