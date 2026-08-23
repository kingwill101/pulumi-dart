// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_remote_settings.dart';
import 'workspace_compilation_overrides.dart';

/// {@template pulumi_dataform_v1beta1_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_repository_args_doc}
class RepositoryArgs {
  /// Optional. The repository's user-friendly name.
  final pulumi.Input<String>? displayName;
  /// Optional. If set, configures this repository to be linked to a Git remote.
  final pulumi.Input<GitRemoteSettings>? gitRemoteSettings;
  /// Optional. Repository user labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  final pulumi.Input<String>? npmrcEnvironmentVariablesSecretVersion;
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  final pulumi.Input<String> repositoryId;
  /// Optional. The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  final pulumi.Input<bool>? setAuthenticatedUserAdmin;
  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  final pulumi.Input<WorkspaceCompilationOverrides>? workspaceCompilationOverrides;

  /// Creates a new [RepositoryArgs].
  /// [displayName] Optional. The repository's user-friendly name.
  /// [gitRemoteSettings] Optional. If set, configures this repository to be linked to a Git remote.
  /// [labels] Optional. Repository user labels.
  /// [location] Optional.
  /// [npmrcEnvironmentVariablesSecretVersion] Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  /// [project] Optional.
  /// [repositoryId] Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [setAuthenticatedUserAdmin] Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  /// [workspaceCompilationOverrides] Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  const RepositoryArgs({
    this.displayName,
    this.gitRemoteSettings,
    this.labels,
    this.location,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.project,
    required this.repositoryId,
    this.serviceAccount,
    this.setAuthenticatedUserAdmin,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'gitRemoteSettings': ?pulumi.Input.mapOptionalInputValue<GitRemoteSettings, Map<String, dynamic>>(gitRemoteSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'npmrcEnvironmentVariablesSecretVersion': ?npmrcEnvironmentVariablesSecretVersion,
      'project': ?project,
      'repositoryId': repositoryId,
      'serviceAccount': ?serviceAccount,
      'setAuthenticatedUserAdmin': ?setAuthenticatedUserAdmin,
      'workspaceCompilationOverrides': ?pulumi.Input.mapOptionalInputValue<WorkspaceCompilationOverrides, Map<String, dynamic>>(workspaceCompilationOverrides, (value) => value.toMap()),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitRemoteSettings: (() { final guardedValue = map['gitRemoteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitRemoteSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      npmrcEnvironmentVariablesSecretVersion: (() { final guardedValue = map['npmrcEnvironmentVariablesSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setAuthenticatedUserAdmin: (() { final guardedValue = map['setAuthenticatedUserAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceCompilationOverrides: (() { final guardedValue = map['workspaceCompilationOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceCompilationOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
