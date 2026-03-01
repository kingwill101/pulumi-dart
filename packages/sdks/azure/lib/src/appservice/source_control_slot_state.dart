// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_control_slot_github_action_configuration.dart';

/// Input properties used for looking up and filtering SourceControlSlot resources.
class SourceControlSlotState {
  /// The URL for the repository. Changing this forces a new resource to be created.
  final pulumi.Input<String>? branch;
  /// A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<SourceControlSlotGithubActionConfiguration>? githubActionConfiguration;
  /// The branch name to use for deployments. Changing this forces a new resource to be created.
  final pulumi.Input<String>? repoUrl;
  /// Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created.
  final pulumi.Input<bool>? rollbackEnabled;
  /// The SCM Type in use. This value is decoded by the service from the repository information supplied.
  final pulumi.Input<String>? scmType;
  /// The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Function App Slots are not supported at this time.
  final pulumi.Input<String>? slotId;
  /// Should the Slot use local Git configuration. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useLocalGit;
  /// Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useManualIntegration;
  /// The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? useMercurial;
  /// Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  final pulumi.Input<bool>? usesGithubAction;

  /// Creates a new [SourceControlSlotState].
  /// [branch] The URL for the repository. Changing this forces a new resource to be created.
  /// [githubActionConfiguration] A `github_action_configuration` block as detailed below. Changing this forces a new resource to be created.
  /// [repoUrl] The branch name to use for deployments. Changing this forces a new resource to be created.
  /// [rollbackEnabled] Should the Deployment Rollback be enabled? Defaults to `false` Changing this forces a new resource to be created.
  /// [scmType] The SCM Type in use. This value is decoded by the service from the repository information supplied.
  /// [slotId] The ID of the Linux or Windows Web App Slot. Changing this forces a new resource to be created.
  /// [useLocalGit] Should the Slot use local Git configuration. Changing this forces a new resource to be created.
  /// [useManualIntegration] Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. Changing this forces a new resource to be created.
  /// [useMercurial] The repository specified is Mercurial. Defaults to `false`. Changing this forces a new resource to be created.
  /// [usesGithubAction] Indicates if the Slot uses a GitHub action for deployment. This value is decoded by the service from the repository information supplied.
  SourceControlSlotState({
    pulumi.Output<String>? branch,
    pulumi.Output<SourceControlSlotGithubActionConfiguration>? githubActionConfiguration,
    pulumi.Output<String>? repoUrl,
    pulumi.Output<bool>? rollbackEnabled,
    pulumi.Output<String>? scmType,
    pulumi.Output<String>? slotId,
    pulumi.Output<bool>? useLocalGit,
    pulumi.Output<bool>? useManualIntegration,
    pulumi.Output<bool>? useMercurial,
    pulumi.Output<bool>? usesGithubAction,
  }) :
      branch = pulumi.Input.asOptionalInput<String>(branch),
      githubActionConfiguration = pulumi.Input.asOptionalInput<SourceControlSlotGithubActionConfiguration>(githubActionConfiguration),
      repoUrl = pulumi.Input.asOptionalInput<String>(repoUrl),
      rollbackEnabled = pulumi.Input.asOptionalInput<bool>(rollbackEnabled),
      scmType = pulumi.Input.asOptionalInput<String>(scmType),
      slotId = pulumi.Input.asOptionalInput<String>(slotId),
      useLocalGit = pulumi.Input.asOptionalInput<bool>(useLocalGit),
      useManualIntegration = pulumi.Input.asOptionalInput<bool>(useManualIntegration),
      useMercurial = pulumi.Input.asOptionalInput<bool>(useMercurial),
      usesGithubAction = pulumi.Input.asOptionalInput<bool>(usesGithubAction);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'githubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<SourceControlSlotGithubActionConfiguration, Map<String, dynamic>>(githubActionConfiguration, (value) => value.toMap()),
      'repoUrl': ?repoUrl,
      'rollbackEnabled': ?rollbackEnabled,
      'scmType': ?scmType,
      'slotId': ?slotId,
      'useLocalGit': ?useLocalGit,
      'useManualIntegration': ?useManualIntegration,
      'useMercurial': ?useMercurial,
      'usesGithubAction': ?usesGithubAction,
    };
  }

  factory SourceControlSlotState.fromMap(Map<String, dynamic> map) {
    return SourceControlSlotState(
      branch: map['branch'] == null ? null : pulumi.Output.create<String>(map['branch'] as String),
      githubActionConfiguration: map['githubActionConfiguration'] == null ? null : pulumi.Output.create<SourceControlSlotGithubActionConfiguration>(SourceControlSlotGithubActionConfiguration.fromMap((map['githubActionConfiguration'] as Map).cast<String, dynamic>())),
      repoUrl: map['repoUrl'] == null ? null : pulumi.Output.create<String>(map['repoUrl'] as String),
      rollbackEnabled: map['rollbackEnabled'] == null ? null : pulumi.Output.create<bool>(map['rollbackEnabled'] as bool),
      scmType: map['scmType'] == null ? null : pulumi.Output.create<String>(map['scmType'] as String),
      slotId: map['slotId'] == null ? null : pulumi.Output.create<String>(map['slotId'] as String),
      useLocalGit: map['useLocalGit'] == null ? null : pulumi.Output.create<bool>(map['useLocalGit'] as bool),
      useManualIntegration: map['useManualIntegration'] == null ? null : pulumi.Output.create<bool>(map['useManualIntegration'] as bool),
      useMercurial: map['useMercurial'] == null ? null : pulumi.Output.create<bool>(map['useMercurial'] as bool),
      usesGithubAction: map['usesGithubAction'] == null ? null : pulumi.Output.create<bool>(map['usesGithubAction'] as bool),
    );
  }
}

