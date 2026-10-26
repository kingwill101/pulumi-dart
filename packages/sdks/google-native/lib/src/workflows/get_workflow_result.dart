// ignore_for_file: unused_element, unnecessary_cast

import 'state_error_response.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  /// Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  final String? callLogLevel;
  /// The timestamp for when the workflow was created. This is a workflow-wide field and is not tied to a specific revision.
  final String? createTime;
  /// Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  final String? cryptoKeyName;
  /// Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  final String? description;
  /// Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  final Map<String, String>? labels;
  /// The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  final String? name;
  /// The timestamp for the latest revision of the workflow's creation.
  final String? revisionCreateTime;
  /// The revision of the workflow. A new revision of a workflow is created as a result of updating the following properties of a workflow: - Service account - Workflow code to be executed The format is "000001-a4d", where the first six characters define the zero-padded revision ordinal number. They are followed by a hyphen and three hexadecimal random characters.
  final String? revisionId;
  /// The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  final String? serviceAccount;
  /// Workflow code to be executed. The size limit is 128KB.
  final String? sourceContents;
  /// State of the workflow deployment.
  final String? state;
  /// Error regarding the state of the workflow. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  final StateErrorResponse? stateError;
  /// The timestamp for when the workflow was last updated. This is a workflow-wide field and is not tied to a specific revision.
  final String? updateTime;
  /// Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  final Map<String, String>? userEnvVars;

  /// Creates a new [GetWorkflowResult].
  /// [callLogLevel] Optional. Describes the level of platform logging to apply to calls and call responses during executions of this workflow. If both the workflow and the execution specify a logging level, the execution level takes precedence.
  /// [createTime] The timestamp for when the workflow was created. This is a workflow-wide field and is not tied to a specific revision.
  /// [cryptoKeyName] Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated with the workflow. Format: projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. If not provided, data associated with the workflow will not be CMEK-encrypted.
  /// [description] Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. This is a workflow-wide field and is not tied to a specific revision.
  /// [labels] Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. This is a workflow-wide field and is not tied to a specific revision.
  /// [name] The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a workflow-wide field and is not tied to a specific revision.
  /// [revisionCreateTime] The timestamp for the latest revision of the workflow's creation.
  /// [revisionId] The revision of the workflow. A new revision of a workflow is created as a result of updating the following properties of a workflow: - Service account - Workflow code to be executed The format is "000001-a4d", where the first six characters define the zero-padded revision ordinal number. They are followed by a hyphen and three hexadecimal random characters.
  /// [serviceAccount] The service account associated with the latest workflow version. This service account represents the identity of the workflow and determines what permissions the workflow has. Format: projects/{project}/serviceAccounts/{account} or {account} Using `-` as a wildcard for the `{project}` or not providing one at all will infer the project from the account. The `{account}` value can be the `email` address or the `unique_id` of the service account. If not provided, workflow will use the project's default service account. Modifying this field for an existing workflow results in a new workflow revision.
  /// [sourceContents] Workflow code to be executed. The size limit is 128KB.
  /// [state] State of the workflow deployment.
  /// [stateError] Error regarding the state of the workflow. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  /// [updateTime] The timestamp for when the workflow was last updated. This is a workflow-wide field and is not tied to a specific revision.
  /// [userEnvVars] Optional. User-defined environment variables associated with this workflow revision. This map has a maximum length of 20. Each string can take up to 40KiB. Keys cannot be empty strings and cannot start with “GOOGLE” or “WORKFLOWS".
  const GetWorkflowResult({
    this.callLogLevel,
    this.createTime,
    this.cryptoKeyName,
    this.description,
    this.labels,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.serviceAccount,
    this.sourceContents,
    this.state,
    this.stateError,
    this.updateTime,
    this.userEnvVars,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callLogLevel': ?callLogLevel,
      'createTime': ?createTime,
      'cryptoKeyName': ?cryptoKeyName,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'serviceAccount': ?serviceAccount,
      'sourceContents': ?sourceContents,
      'state': ?state,
      'stateError': ?stateError?.toMap(),
      'updateTime': ?updateTime,
      'userEnvVars': ?userEnvVars,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      callLogLevel: (() { final guardedValue = map['callLogLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cryptoKeyName: (() { final guardedValue = map['cryptoKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceContents: (() { final guardedValue = map['sourceContents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateError: (() { final guardedValue = map['stateError']; if (guardedValue == null) return null; return StateErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userEnvVars: (() { final guardedValue = map['userEnvVars']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
