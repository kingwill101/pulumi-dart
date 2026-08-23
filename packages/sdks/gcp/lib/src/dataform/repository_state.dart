// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_git_remote_settings.dart';
import 'repository_workspace_compilation_overrides.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Policy to control how the repository and its child resources are deleted.
  /// When set to `FORCE`, any child resources of this repository will also be deleted.
  ///
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  ///
  /// Possible values: `DELETE`, `FORCE`, 'PREVENT', 'ABANDON'. Defaults to `DELETE`.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. The repository's user-friendly name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional. If set, configures this repository to be linked to a Git remote.
  /// Structure is documented below.
  final pulumi.Input<RepositoryGitRemoteSettings>? gitRemoteSettings;
  /// Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// It is not possible to add or update the encryption key after the repository is created. Example projects/[kmsProjectId]/locations/[region]/keyRings/[keyRegion]/cryptoKeys/[key]
  final pulumi.Input<String>? kmsKeyName;
  /// Optional. Repository user labels.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The repository's name.
  final pulumi.Input<String>? name;
  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  final pulumi.Input<String>? npmrcEnvironmentVariablesSecretVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;
  /// If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkspaceCompilationOverrides>? workspaceCompilationOverrides;

  /// Creates a new [RepositoryState].
  /// [deletionPolicy] Policy to control how the repository and its child resources are deleted.
  /// [displayName] Optional. The repository's user-friendly name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [gitRemoteSettings] Optional. If set, configures this repository to be linked to a Git remote.
  /// [kmsKeyName] Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// [labels] Optional. Repository user labels.
  /// [name] The repository's name.
  /// [npmrcEnvironmentVariablesSecretVersion] Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] A reference to the region
  /// [serviceAccount] The service account to run workflow invocations under.
  /// [workspaceCompilationOverrides] If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  const RepositoryState({
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.gitRemoteSettings,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.project,
    this.pulumiLabels,
    this.region,
    this.serviceAccount,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'gitRemoteSettings': ?pulumi.Input.mapOptionalInputValue<RepositoryGitRemoteSettings, Map<String, dynamic>>(gitRemoteSettings, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'name': ?name,
      'npmrcEnvironmentVariablesSecretVersion': ?npmrcEnvironmentVariablesSecretVersion,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'serviceAccount': ?serviceAccount,
      'workspaceCompilationOverrides': ?pulumi.Input.mapOptionalInputValue<RepositoryWorkspaceCompilationOverrides, Map<String, dynamic>>(workspaceCompilationOverrides, (value) => value.toMap()),
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      gitRemoteSettings: (() { final guardedValue = map['gitRemoteSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryGitRemoteSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      npmrcEnvironmentVariablesSecretVersion: (() { final guardedValue = map['npmrcEnvironmentVariablesSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceCompilationOverrides: (() { final guardedValue = map['workspaceCompilationOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryWorkspaceCompilationOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
