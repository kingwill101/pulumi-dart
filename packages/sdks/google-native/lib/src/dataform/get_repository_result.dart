// ignore_for_file: unused_element, unnecessary_cast

import 'git_remote_settings_response.dart';
import 'workspace_compilation_overrides_response.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Optional. The repository's user-friendly name.
  final String? displayName;
  /// Optional. If set, configures this repository to be linked to a Git remote.
  final GitRemoteSettingsResponse? gitRemoteSettings;
  /// Optional. Repository user labels.
  final Map<String, String>? labels;
  /// The repository's name.
  final String? name;
  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  final String? npmrcEnvironmentVariablesSecretVersion;
  /// Optional. The service account to run workflow invocations under.
  final String? serviceAccount;
  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  final bool? setAuthenticatedUserAdmin;
  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  final WorkspaceCompilationOverridesResponse? workspaceCompilationOverrides;

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
    this.displayName,
    this.gitRemoteSettings,
    this.labels,
    this.name,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.serviceAccount,
    this.setAuthenticatedUserAdmin,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'gitRemoteSettings': ?gitRemoteSettings?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'npmrcEnvironmentVariablesSecretVersion': ?npmrcEnvironmentVariablesSecretVersion,
      'serviceAccount': ?serviceAccount,
      'setAuthenticatedUserAdmin': ?setAuthenticatedUserAdmin,
      'workspaceCompilationOverrides': ?workspaceCompilationOverrides?.toMap(),
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gitRemoteSettings: (() { final guardedValue = map['gitRemoteSettings']; if (guardedValue == null) return null; return GitRemoteSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      npmrcEnvironmentVariablesSecretVersion: (() { final guardedValue = map['npmrcEnvironmentVariablesSecretVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      setAuthenticatedUserAdmin: (() { final guardedValue = map['setAuthenticatedUserAdmin']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      workspaceCompilationOverrides: (() { final guardedValue = map['workspaceCompilationOverrides']; if (guardedValue == null) return null; return WorkspaceCompilationOverridesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
