// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_call_log_level.dart';

/// {@template pulumi_workflows_v1_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_workflows_v1_workflow_args_doc}
class WorkflowArgs {
  /// Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  final pulumi.Input<WorkflowCallLogLevel>? callLogLevel;
  /// Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  final pulumi.Input<String>? cryptoKeyName;
  /// Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<String>? description;
  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final pulumi.Input<String>? serviceAccount;
  /// Workflow code to be executed. The size limit is 128KB.
  final pulumi.Input<String>? sourceContents;
  /// Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  final pulumi.Input<Map<String, String>>? userEnvVars;
  /// Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  final pulumi.Input<String> workflowId;

  /// Creates a new [WorkflowArgs].
  /// [callLogLevel] Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  /// [cryptoKeyName] Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  /// [description] Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  /// [labels] Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  /// [location] Optional.
  /// [name] The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  /// [project] Optional.
  /// [serviceAccount] The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  /// [sourceContents] Workflow code to be executed. The size limit is 128KB.
  /// [userEnvVars] Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  /// [workflowId] Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only letters, numbers, underscores and hyphens. * Must start with a letter. * Must be between 1-64 characters. * Must end with a number or a letter. * Must be unique within the customer project and location.
  WorkflowArgs({
    this.callLogLevel,
    this.cryptoKeyName,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.serviceAccount,
    this.sourceContents,
    this.userEnvVars,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callLogLevel': ?pulumi.Input.mapOptionalInputValue<WorkflowCallLogLevel, String>(callLogLevel, (value) => value.value),
      'cryptoKeyName': ?cryptoKeyName,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'sourceContents': ?sourceContents,
      'userEnvVars': ?userEnvVars,
      'workflowId': workflowId,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      callLogLevel: map['callLogLevel'] == null ? null : (WorkflowCallLogLevel.fromValue(map['callLogLevel'] as String)).input(),
      cryptoKeyName: map['cryptoKeyName'] == null ? null : (map['cryptoKeyName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      sourceContents: map['sourceContents'] == null ? null : (map['sourceContents'] as String).input(),
      userEnvVars: map['userEnvVars'] == null ? null : ((map['userEnvVars'] as Map).cast<String, String>()).input(),
      workflowId: (map['workflowId'] as String).input(),
    );
  }
}

