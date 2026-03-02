// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_github_action_configuration.dart';

/// Input properties used for looking up and filtering SourceControl resources.
class SourceControlState {
  /// The ID of the Windows or Linux Web App. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Function apps are not supported at this time.
  final pulumi.Input<String>? appId;
  /// The branch name to use for deployments. Changing this forces a new resource to be created.
  final pulumi.Input<String>? branch;
  /// A `github_action_configuration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SourceControlGithubActionConfiguration>? githubActionConfiguration;
  /// The URL for the repository. Changing this forces a new resource to be created.
  final pulumi.Input<String>? repoUrl;
  /// Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure can typically set this value automatically based on the `repo_url` value.
  final pulumi.Input<bool>? rollbackEnabled;
  /// The SCM Type in use. This value is decoded by the service from the repository information supplied.
  final pulumi.Input<String>? scmType;
  /// Should the App use local Git configuration. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useLocalGit;
  /// Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useMercurial;
  /// Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  final pulumi.Input<bool>? usesGithubAction;

  /// Creates a new [SourceControlState].
  /// [appId] The ID of the Windows or Linux Web App. Changing this forces a new resource to be created.
  /// [branch] The branch name to use for deployments. Changing this forces a new resource to be created.
  /// [githubActionConfiguration] A `github_action_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [repoUrl] The URL for the repository. Changing this forces a new resource to be created.
  /// [rollbackEnabled] Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created.
  /// [scmType] The SCM Type in use. This value is decoded by the service from the repository information supplied.
  /// [useLocalGit] Should the App use local Git configuration. Changing this forces a new resource to be created.
  /// [useManualIntegration] Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  /// [useMercurial] The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  /// [usesGithubAction] Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  SourceControlState({
    this.appId,
    this.branch,
    this.githubActionConfiguration,
    this.repoUrl,
    this.rollbackEnabled,
    this.scmType,
    this.useLocalGit,
    this.useManualIntegration,
    this.useMercurial,
    this.usesGithubAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'branch': ?branch,
      'githubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlGithubActionConfiguration, Map<String, dynamic>>(githubActionConfiguration, (value) => value.toMap()),
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'scmType': ?scmType,
      'useLocalGit': ?useLocalGit,
      'useManualIntegration': ?useManualIntegration,
      'useMercurial': ?useMercurial,
      'usesGithubAction': ?usesGithubAction,
    };
  }

  factory SourceControlState.fromMap(Map<String, dynamic> map) {
    return SourceControlState(
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : (SourceControlGithubActionConfiguration.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>())).input(),
      repoUrl: map['repoUrl'] == null ? null : (map['repoUrl'] as String).input(),
      rollbackEnabled: map['rollbackEnabled'] == null ? null : (map['rollbackEnabled'] as bool).input(),
      scmType: map['scmType'] == null ? null : (map['scmType'] as String).input(),
      useLocalGit: map['useLocalGit'] == null ? null : (map['useLocalGit'] as bool).input(),
      useManualIntegration: map['useManualIntegration'] == null ? null : (map['useManualIntegration'] as bool).input(),
      useMercurial: map['useMercurial'] == null ? null : (map['useMercurial'] as bool).input(),
      usesGithubAction: map['usesGithubAction'] == null ? null : (map['usesGithubAction'] as bool).input(),
    );
  }
}

