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
    required pulumi.Output<String> appId,
    pulumi.Output<String>? branch,
    pulumi.Output<SourceControlGithubActionConfiguration>? githubActionConfiguration,
    pulumi.Output<String>? repoUrl,
    pulumi.Output<bool>? rollbackEnabled,
    pulumi.Output<bool>? useLocalGit,
    pulumi.Output<bool>? useManualIntegration,
    pulumi.Output<bool>? useMercurial,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      branch = pulumi.Input.asOptionalInput<String>(branch),
      githubActionConfiguration = pulumi.Input.asOptionalInput<SourceControlGithubActionConfiguration>(githubActionConfiguration),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      rollbackEnabled = pulumi.Input.asOptionalInput<bool>(rollbackEnabled),
      useLocalGit = pulumi.Input.asOptionalInput<bool>(useLocalGit),
      useManualIntegration = pulumi.Input.asOptionalInput<bool>(useManualIntegration),
      useMercurial = pulumi.Input.asOptionalInput<bool>(useMercurial);

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
      appId: pulumi.Output.create<String>(map['appId'] as String),
      branch: map['branch'] == null ? null : pulumi.Output.create<String>(map['branch'] as String),
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : pulumi.Output.create<SourceControlGithubActionConfiguration>(SourceControlGithubActionConfiguration.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>())),
      repoUrl: map['repoUrl'] == null ? null : pulumi.Output.create<String>(map['repoUrl'] as String),
      rollbackEnabled: map['rollbackEnabled'] == null ? null : pulumi.Output.create<bool>(map['rollbackEnabled'] as bool),
      useLocalGit: map['useLocalGit'] == null ? null : pulumi.Output.create<bool>(map['useLocalGit'] as bool),
      useManualIntegration: map['useManualIntegration'] == null ? null : pulumi.Output.create<bool>(map['useManualIntegration'] as bool),
      useMercurial: map['useMercurial'] == null ? null : pulumi.Output.create<bool>(map['useMercurial'] as bool),
    );
  }
}

