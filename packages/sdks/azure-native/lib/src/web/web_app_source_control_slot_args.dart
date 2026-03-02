// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_action_configuration.dart';

/// {@template pulumi_web_web_app_source_control_slot_args_doc}
/// The set of arguments for WebAppSourceControlSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_source_control_slot_args_doc}
class WebAppSourceControlSlotArgs {
  /// Name of branch to use for deployment.
  final pulumi.Input<String>? branch;
  /// <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  final pulumi.Input<bool>? deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  final pulumi.Input<GitHubActionConfiguration>? gitHubActionConfiguration;
  /// <code>true</code> if this is deployed via GitHub action.
  final pulumi.Input<bool>? isGitHubAction;
  /// <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  final pulumi.Input<bool>? isManualIntegration;
  /// <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  final pulumi.Input<bool>? isMercurial;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Repository or source control URL.
  final pulumi.Input<String>? repoUrl;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will update the source control configuration for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [WebAppSourceControlSlotArgs].
  /// [branch] Name of branch to use for deployment.
  /// [deploymentRollbackEnabled] <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  /// [gitHubActionConfiguration] If GitHub Action is selected, than the associated configuration.
  /// [isGitHubAction] <code>true</code> if this is deployed via GitHub action.
  /// [isManualIntegration] <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  /// [isMercurial] <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [repoUrl] Repository or source control URL.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will update the source control configuration for the production slot.
  WebAppSourceControlSlotArgs({
    this.branch,
    this.deploymentRollbackEnabled,
    this.gitHubActionConfiguration,
    this.isGitHubAction,
    this.isManualIntegration,
    this.isMercurial,
    this.kind,
    required this.name,
    this.repoUrl,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'deploymentRollbackEnabled': ?deploymentRollbackEnabled,
      'gitHubActionConfiguration': ?pulumi.Input.mapOptionalInputValue<GitHubActionConfiguration, Map<String, dynamic>>(gitHubActionConfiguration, (value) => value.toMap()),
      'isGitHubAction': ?isGitHubAction,
      'isManualIntegration': ?isManualIntegration,
      'isMercurial': ?isMercurial,
      'kind': ?kind,
      'name': name,
      'repoUrl': ?repoUrl,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory WebAppSourceControlSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppSourceControlSlotArgs(
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      deploymentRollbackEnabled: map['deploymentRollbackEnabled'] == null ? null : (map['deploymentRollbackEnabled'] as bool).input(),
      gitHubActionConfiguration: map['gitHubActionConfiguration'] == null ? null : (GitHubActionConfiguration.fromMap((map['gitHubActionConfiguration'] as Map).cast<String, dynamic>())).input(),
      isGitHubAction: map['isGitHubAction'] == null ? null : (map['isGitHubAction'] as bool).input(),
      isManualIntegration: map['isManualIntegration'] == null ? null : (map['isManualIntegration'] as bool).input(),
      isMercurial: map['isMercurial'] == null ? null : (map['isMercurial'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
      repoUrl: map['repoUrl'] == null ? null : (map['repoUrl'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

