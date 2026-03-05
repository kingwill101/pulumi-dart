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
  /// &lt;code&gt;true&lt;/code&gt; to enable deployment rollback; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  final pulumi.Input<GitHubActionConfiguration>? gitHubActionConfiguration;
  /// &lt;code&gt;true&lt;/code&gt; if this is deployed via GitHub action.
  final pulumi.Input<bool>? isGitHubAction;
  /// &lt;code&gt;true&lt;/code&gt; to limit to manual integration; &lt;code&gt;false&lt;/code&gt; to enable continuous integration (which configures webhooks into online repos like GitHub).
  final pulumi.Input<bool>? isManualIntegration;
  /// &lt;code&gt;true&lt;/code&gt; for a Mercurial repository; &lt;code&gt;false&lt;/code&gt; for a Git repository.
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
  /// [deploymentRollbackEnabled] &lt;code&gt;true&lt;/code&gt; to enable deployment rollback; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [gitHubActionConfiguration] If GitHub Action is selected, than the associated configuration.
  /// [isGitHubAction] &lt;code&gt;true&lt;/code&gt; if this is deployed via GitHub action.
  /// [isManualIntegration] &lt;code&gt;true&lt;/code&gt; to limit to manual integration; &lt;code&gt;false&lt;/code&gt; to enable continuous integration (which configures webhooks into online repos like GitHub).
  /// [isMercurial] &lt;code&gt;true&lt;/code&gt; for a Mercurial repository; &lt;code&gt;false&lt;/code&gt; for a Git repository.
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
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentRollbackEnabled: (() { final guardedValue = map['deploymentRollbackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gitHubActionConfiguration: (() { final guardedValue = map['gitHubActionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHubActionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isGitHubAction: (() { final guardedValue = map['isGitHubAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isManualIntegration: (() { final guardedValue = map['isManualIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isMercurial: (() { final guardedValue = map['isMercurial']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

