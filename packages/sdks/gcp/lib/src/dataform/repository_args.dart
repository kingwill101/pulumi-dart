// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_git_remote_settings.dart';
import 'repository_workspace_compilation_overrides.dart';

/// {@template pulumi_dataform_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_repository_args_doc}
class RepositoryArgs {
  /// Policy to control how the repository and its child resources are deleted. When set to `FORCE`, any child resources of this repository will also be deleted. Possible values: `DELETE`, `FORCE`. Defaults to `DELETE`.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. The repository's user-friendly name.
  final pulumi.Input<String>? displayName;
  /// Optional. If set, configures this repository to be linked to a Git remote.
  /// Structure is documented below.
  final pulumi.Input<RepositoryGitRemoteSettings>? gitRemoteSettings;
  /// Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// It is not possible to add or update the encryption key after the repository is created. Example projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  final pulumi.Input<String>? kmsKeyName;
  /// Optional. Repository user labels.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The repository's name.
  final pulumi.Input<String>? name;
  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  final pulumi.Input<String>? npmrcEnvironmentVariablesSecretVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;
  /// If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkspaceCompilationOverrides>? workspaceCompilationOverrides;

  /// Creates a new [RepositoryArgs].
  /// [deletionPolicy] Policy to control how the repository and its child resources are deleted. When set to `FORCE`, any child resources of this repository will also be deleted. Possible values: `DELETE`, `FORCE`. Defaults to `DELETE`.
  /// [displayName] Optional. The repository's user-friendly name.
  /// [gitRemoteSettings] Optional. If set, configures this repository to be linked to a Git remote.
  /// [kmsKeyName] Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// [labels] Optional. Repository user labels.
  /// [name] The repository's name.
  /// [npmrcEnvironmentVariablesSecretVersion] Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [serviceAccount] The service account to run workflow invocations under.
  /// [workspaceCompilationOverrides] If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  RepositoryArgs({
    this.deletionPolicy,
    this.displayName,
    this.gitRemoteSettings,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.project,
    this.region,
    this.serviceAccount,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'gitRemoteSettings': ?pulumi.Input.mapOptionalInputValue<RepositoryGitRemoteSettings, Map<String, dynamic>>(gitRemoteSettings, (value) => value.toMap()),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'name': ?name,
      'npmrcEnvironmentVariablesSecretVersion': ?npmrcEnvironmentVariablesSecretVersion,
      'project': ?project,
      'region': ?region,
      'serviceAccount': ?serviceAccount,
      'workspaceCompilationOverrides': ?pulumi.Input.mapOptionalInputValue<RepositoryWorkspaceCompilationOverrides, Map<String, dynamic>>(workspaceCompilationOverrides, (value) => value.toMap()),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      gitRemoteSettings: map['gitRemoteSettings'] == null ? null : (RepositoryGitRemoteSettings.fromMap((map['gitRemoteSettings']! as Map).cast<String, dynamic>())).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      npmrcEnvironmentVariablesSecretVersion: map['npmrcEnvironmentVariablesSecretVersion'] == null ? null : (map['npmrcEnvironmentVariablesSecretVersion']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      workspaceCompilationOverrides: map['workspaceCompilationOverrides'] == null ? null : (RepositoryWorkspaceCompilationOverrides.fromMap((map['workspaceCompilationOverrides']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

