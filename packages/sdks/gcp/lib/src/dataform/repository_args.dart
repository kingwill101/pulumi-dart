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
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<RepositoryGitRemoteSettings>? gitRemoteSettings,
    pulumi.Output<String>? kmsKeyName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? npmrcEnvironmentVariablesSecretVersion,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<RepositoryWorkspaceCompilationOverrides>? workspaceCompilationOverrides,
  }) :
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gitRemoteSettings = pulumi.Input.asOptionalInput<RepositoryGitRemoteSettings>(gitRemoteSettings),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      npmrcEnvironmentVariablesSecretVersion = pulumi.Input.asOptionalInput<String>(npmrcEnvironmentVariablesSecretVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      workspaceCompilationOverrides = pulumi.Input.asOptionalInput<RepositoryWorkspaceCompilationOverrides>(workspaceCompilationOverrides);

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
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gitRemoteSettings: map['gitRemoteSettings'] == null ? null : pulumi.Output.create<RepositoryGitRemoteSettings>(RepositoryGitRemoteSettings.fromMap((map['gitRemoteSettings'] as Map).cast<String, dynamic>())),
      kmsKeyName: map['kmsKeyName'] == null ? null : pulumi.Output.create<String>(map['kmsKeyName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      npmrcEnvironmentVariablesSecretVersion: map['npmrcEnvironmentVariablesSecretVersion'] == null ? null : pulumi.Output.create<String>(map['npmrcEnvironmentVariablesSecretVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      workspaceCompilationOverrides: map['workspaceCompilationOverrides'] == null ? null : pulumi.Output.create<RepositoryWorkspaceCompilationOverrides>(RepositoryWorkspaceCompilationOverrides.fromMap((map['workspaceCompilationOverrides'] as Map).cast<String, dynamic>())),
    );
  }
}

