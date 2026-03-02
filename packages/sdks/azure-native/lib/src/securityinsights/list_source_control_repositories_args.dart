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
    this.clientId,
    this.code,
    this.installationId,
    required this.kind,
    required this.resourceGroupName,
    this.state,
    this.token,
    required this.workspaceName,
  });

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
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      code: map['code'] == null ? null : (map['code'] as String).input(),
      installationId: map['installationId'] == null ? null : (map['installationId'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

