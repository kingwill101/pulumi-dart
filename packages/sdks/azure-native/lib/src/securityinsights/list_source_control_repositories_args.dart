// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_list_source_control_repositories_args_doc}
/// Arguments for listSourceControlRepositories.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_list_source_control_repositories_args_doc}
class ListSourceControlRepositoriesArgs {
  /// OAuth ClientId. Required when `kind` is `OAuth`
  final pulumi.Input<String>? clientId;
  /// OAuth Code. Required when `kind` is `OAuth`
  final pulumi.Input<String>? code;
  /// Application installation ID. Required when `kind` is `App`. Supported by `GitHub` only.
  final pulumi.Input<String>? installationId;
  /// The kind of repository access credentials
  final pulumi.Input<String> kind;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// OAuth State. Required when `kind` is `OAuth`
  final pulumi.Input<String>? state;
  /// Personal Access Token. Required when `kind` is `PAT`
  final pulumi.Input<String>? token;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListSourceControlRepositoriesArgs].
  /// [clientId] OAuth ClientId. Required when `kind` is `OAuth`
  /// [code] OAuth Code. Required when `kind` is `OAuth`
  /// [installationId] Application installation ID. Required when `kind` is `App`. Supported by `GitHub` only.
  /// [kind] The kind of repository access credentials
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [state] OAuth State. Required when `kind` is `OAuth`
  /// [token] Personal Access Token. Required when `kind` is `PAT`
  /// [workspaceName] The name of the workspace.
  ListSourceControlRepositoriesArgs({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? code,
    pulumi.Output<String>? installationId,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? state,
    pulumi.Output<String>? token,
    required pulumi.Output<String> workspaceName,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      code = pulumi.Input.asOptionalInput<String>(code),
      installationId = pulumi.Input.asOptionalInput<String>(installationId),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      token = pulumi.Input.asOptionalInput<String>(token),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'code': ?code,
      'installationId': ?installationId,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'token': ?token,
      'workspaceName': workspaceName,
    };
  }

  factory ListSourceControlRepositoriesArgs.fromMap(Map<String, dynamic> map) {
    return ListSourceControlRepositoriesArgs(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      code: map['code'] == null ? null : pulumi.Output.create<String>(map['code'] as String),
      installationId: map['installationId'] == null ? null : pulumi.Output.create<String>(map['installationId'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

