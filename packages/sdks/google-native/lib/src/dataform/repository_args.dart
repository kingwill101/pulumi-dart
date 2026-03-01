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
  RepositoryArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<GitRemoteSettings>? gitRemoteSettings,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? npmrcEnvironmentVariablesSecretVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<bool>? setAuthenticatedUserAdmin,
    pulumi.Output<WorkspaceCompilationOverrides>? workspaceCompilationOverrides,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gitRemoteSettings = pulumi.Input.asOptionalInput<GitRemoteSettings>(gitRemoteSettings),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      npmrcEnvironmentVariablesSecretVersion = pulumi.Input.asOptionalInput<String>(npmrcEnvironmentVariablesSecretVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      setAuthenticatedUserAdmin = pulumi.Input.asOptionalInput<bool>(setAuthenticatedUserAdmin),
      workspaceCompilationOverrides = pulumi.Input.asOptionalInput<WorkspaceCompilationOverrides>(workspaceCompilationOverrides);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gitRemoteSettings: map['gitRemoteSettings'] == null ? null : pulumi.Output.create<GitRemoteSettings>(GitRemoteSettings.fromMap((map['gitRemoteSettings'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      npmrcEnvironmentVariablesSecretVersion: map['npmrcEnvironmentVariablesSecretVersion'] == null ? null : pulumi.Output.create<String>(map['npmrcEnvironmentVariablesSecretVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      setAuthenticatedUserAdmin: map['setAuthenticatedUserAdmin'] == null ? null : pulumi.Output.create<bool>(map['setAuthenticatedUserAdmin'] as bool),
      workspaceCompilationOverrides: map['workspaceCompilationOverrides'] == null ? null : pulumi.Output.create<WorkspaceCompilationOverrides>(WorkspaceCompilationOverrides.fromMap((map['workspaceCompilationOverrides'] as Map).cast<String, dynamic>())),
    );
  }
}

