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
  /// &gt; **Note:** Function App Slots are not supported at this time.
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
    this.branch,
    this.githubActionConfiguration,
    this.repoUrl,
    this.rollbackEnabled,
    this.scmType,
    this.slotId,
    this.useLocalGit,
    this.useManualIntegration,
    this.useMercurial,
    this.usesGithubAction,
  });

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
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubActionConfiguration: (() { final guardedValue = map['githubActionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceControlSlotGithubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollbackEnabled: (() { final guardedValue = map['rollbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scmType: (() { final guardedValue = map['scmType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slotId: (() { final guardedValue = map['slotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useLocalGit: (() { final guardedValue = map['useLocalGit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useManualIntegration: (() { final guardedValue = map['useManualIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useMercurial: (() { final guardedValue = map['useMercurial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      usesGithubAction: (() { final guardedValue = map['usesGithubAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

