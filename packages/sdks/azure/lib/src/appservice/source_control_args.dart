// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_github_action_configuration.dart';

/// {@template pulumi_appservice_source_control_source_control_args_doc}
/// The set of arguments for SourceControl.
/// {@endtemplate}
/// {@macro pulumi_appservice_source_control_source_control_args_doc}
class SourceControlArgs {
  /// The ID of the Windows or Linux Web App. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Function apps are not supported at this time.
  final pulumi.Input<String> appId;
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
  /// Should the App use local Git configuration. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useLocalGit;
  /// Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useMercurial;

  /// Creates a new [SourceControlArgs].
  /// [appId] The ID of the Windows or Linux Web App. Changing this forces a new resource to be created.
  /// [branch] The branch name to use for deployments. Changing this forces a new resource to be created.
  /// [githubActionConfiguration] A `github_action_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [repoUrl] The URL for the repository. Changing this forces a new resource to be created.
  /// [rollbackEnabled] Should the Deployment Rollback be enabled? Defaults to `false`. Changing this forces a new resource to be created.
  /// [useLocalGit] Should the App use local Git configuration. Changing this forces a new resource to be created.
  /// [useManualIntegration] Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  /// [useMercurial] The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  SourceControlArgs({
    required this.appId,
    this.branch,
    this.githubActionConfiguration,
    this.repoUrl,
    this.rollbackEnabled,
    this.useLocalGit,
    this.useManualIntegration,
    this.useMercurial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'branch': ?branch,
      'githubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlGithubActionConfiguration, Map<String, dynamic>>(githubActionConfiguration, (value) => value.toMap()),
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'useLocalGit': ?useLocalGit,
      'useManualIntegration': ?useManualIntegration,
      'useMercurial': ?useMercurial,
    };
  }

  factory SourceControlArgs.fromMap(Map<String, dynamic> map) {
    return SourceControlArgs(
      appId: (map['appId'] as String).input(),
      branch: map['branch'] == null ? null : (map['branch']! as String).input(),
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : (SourceControlGithubActionConfiguration.fromMap((map['githubActionConfiguration']! as Map).cast<String, dynamic>())).input(),
      repoUrl: map['repoUrl'] == null ? null : (map['repoUrl']! as String).input(),
      rollbackEnabled: map['rollbackEnabled'] == null ? null : (map['rollbackEnabled']! as bool).input(),
      useLocalGit: map['useLocalGit'] == null ? null : (map['useLocalGit']! as bool).input(),
      useManualIntegration: map['useManualIntegration'] == null ? null : (map['useManualIntegration']! as bool).input(),
      useMercurial: map['useMercurial'] == null ? null : (map['useMercurial']! as bool).input(),
    );
  }
}

