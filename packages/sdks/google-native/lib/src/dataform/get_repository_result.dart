// ignore_for_file: unused_element, unnecessary_cast

import 'git_remote_settings_response.dart';
import 'workspace_compilation_overrides_response.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Optional. The repository's user-friendly name.
  final String displayName;
  /// Optional. If set, configures this repository to be linked to a Git remote.
  final GitRemoteSettingsResponse gitRemoteSettings;
  /// Optional. Repository user labels.
  final Map<String, String> labels;
  /// The repository's name.
  final String name;
  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  final String npmrcEnvironmentVariablesSecretVersion;
  /// Optional. The service account to run workflow invocations under.
  final String serviceAccount;
  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  final bool setAuthenticatedUserAdmin;
  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  final WorkspaceCompilationOverridesResponse workspaceCompilationOverrides;

  /// Creates a new [GetRepositoryResult].
  /// [displayName] Optional. The repository's user-friendly name.
  /// [gitRemoteSettings] Optional. If set, configures this repository to be linked to a Git remote.
  /// [labels] Optional. Repository user labels.
  /// [name] The repository's name.
  /// [npmrcEnvironmentVariablesSecretVersion] Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [setAuthenticatedUserAdmin] Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  /// [workspaceCompilationOverrides] Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  const GetRepositoryResult({
    required this.displayName,
    required this.gitRemoteSettings,
    required this.labels,
    required this.name,
    required this.npmrcEnvironmentVariablesSecretVersion,
    required this.serviceAccount,
    required this.setAuthenticatedUserAdmin,
    required this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'gitRemoteSettings': gitRemoteSettings.toMap(),
      'labels': labels,
      'name': name,
      'npmrcEnvironmentVariablesSecretVersion': npmrcEnvironmentVariablesSecretVersion,
      'serviceAccount': serviceAccount,
      'setAuthenticatedUserAdmin': setAuthenticatedUserAdmin,
      'workspaceCompilationOverrides': workspaceCompilationOverrides.toMap(),
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      displayName: map['displayName'] as String,
      gitRemoteSettings: GitRemoteSettingsResponse.fromMap((map['gitRemoteSettings']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      npmrcEnvironmentVariablesSecretVersion: map['npmrcEnvironmentVariablesSecretVersion'] as String,
      serviceAccount: map['serviceAccount'] as String,
      setAuthenticatedUserAdmin: map['setAuthenticatedUserAdmin'] as bool,
      workspaceCompilationOverrides: WorkspaceCompilationOverridesResponse.fromMap((map['workspaceCompilationOverrides']! as Map).cast<String, dynamic>()),
    );
  }
}

