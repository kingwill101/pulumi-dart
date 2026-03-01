// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_action_configuration_response.dart';

/// Result data returned by getWebAppSourceControlSlot.
class GetWebAppSourceControlSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Name of branch to use for deployment.
  final String? branch;
  /// <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  final bool? deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  final GitHubActionConfigurationResponse? gitHubActionConfiguration;
  /// Resource Id.
  final String id;
  /// <code>true</code> if this is deployed via GitHub action.
  final bool? isGitHubAction;
  /// <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  final bool? isManualIntegration;
  /// <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  final bool? isMercurial;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Repository or source control URL.
  final String? repoUrl;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppSourceControlSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branch] Name of branch to use for deployment.
  /// [deploymentRollbackEnabled] <code>true</code> to enable deployment rollback; otherwise, <code>false</code>.
  /// [gitHubActionConfiguration] If GitHub Action is selected, than the associated configuration.
  /// [id] Resource Id.
  /// [isGitHubAction] <code>true</code> if this is deployed via GitHub action.
  /// [isManualIntegration] <code>true</code> to limit to manual integration; <code>false</code> to enable continuous integration (which configures webhooks into online repos like GitHub).
  /// [isMercurial] <code>true</code> for a Mercurial repository; <code>false</code> for a Git repository.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [repoUrl] Repository or source control URL.
  /// [type] Resource type.
  GetWebAppSourceControlSlotResult({
    required this.azureApiVersion,
    this.branch,
    this.deploymentRollbackEnabled,
    this.gitHubActionConfiguration,
    required this.id,
    this.isGitHubAction,
    this.isManualIntegration,
    this.isMercurial,
    this.kind,
    required this.name,
    this.repoUrl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'branch': ?branch,
      'deploymentRollbackEnabled': ?deploymentRollbackEnabled,
      'gitHubActionConfiguration': ?gitHubActionConfiguration == null ? null : gitHubActionConfiguration!.toMap(),
      'id': id,
      'isGitHubAction': ?isGitHubAction,
      'isManualIntegration': ?isManualIntegration,
      'isMercurial': ?isMercurial,
      'kind': ?kind,
      'name': name,
      'repoUrl': ?repoUrl,
      'type': type,
    };
  }

  factory GetWebAppSourceControlSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSourceControlSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      branch: map['branch'] == null ? null : map['branch'] as String,
      deploymentRollbackEnabled: map['deploymentRollbackEnabled'] == null ? null : map['deploymentRollbackEnabled'] as bool,
      gitHubActionConfiguration: map['gitHubActionConfiguration'] == null ? null : GitHubActionConfigurationResponse.fromMap((map['gitHubActionConfiguration'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      isGitHubAction: map['isGitHubAction'] == null ? null : map['isGitHubAction'] as bool,
      isManualIntegration: map['isManualIntegration'] == null ? null : map['isManualIntegration'] as bool,
      isMercurial: map['isMercurial'] == null ? null : map['isMercurial'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      repoUrl: map['repoUrl'] == null ? null : map['repoUrl'] as String,
      type: map['type'] as String,
    );
  }
}

