// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_action_configuration_response.dart';

/// Result data returned by getWebAppSourceControl.
class GetWebAppSourceControlResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Name of branch to use for deployment.
  final String? branch;
  /// &lt;code&gt;true&lt;/code&gt; to enable deployment rollback; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final bool? deploymentRollbackEnabled;
  /// If GitHub Action is selected, than the associated configuration.
  final GitHubActionConfigurationResponse? gitHubActionConfiguration;
  /// Resource Id.
  final String id;
  /// &lt;code&gt;true&lt;/code&gt; if this is deployed via GitHub action.
  final bool? isGitHubAction;
  /// &lt;code&gt;true&lt;/code&gt; to limit to manual integration; &lt;code&gt;false&lt;/code&gt; to enable continuous integration (which configures webhooks into online repos like GitHub).
  final bool? isManualIntegration;
  /// &lt;code&gt;true&lt;/code&gt; for a Mercurial repository; &lt;code&gt;false&lt;/code&gt; for a Git repository.
  final bool? isMercurial;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Repository or source control URL.
  final String? repoUrl;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppSourceControlResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [branch] Name of branch to use for deployment.
  /// [deploymentRollbackEnabled] &lt;code&gt;true&lt;/code&gt; to enable deployment rollback; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [gitHubActionConfiguration] If GitHub Action is selected, than the associated configuration.
  /// [id] Resource Id.
  /// [isGitHubAction] &lt;code&gt;true&lt;/code&gt; if this is deployed via GitHub action.
  /// [isManualIntegration] &lt;code&gt;true&lt;/code&gt; to limit to manual integration; &lt;code&gt;false&lt;/code&gt; to enable continuous integration (which configures webhooks into online repos like GitHub).
  /// [isMercurial] &lt;code&gt;true&lt;/code&gt; for a Mercurial repository; &lt;code&gt;false&lt;/code&gt; for a Git repository.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [repoUrl] Repository or source control URL.
  /// [type] Resource type.
  GetWebAppSourceControlResult({
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
      'gitHubActionConfiguration': ?gitHubActionConfiguration?.toMap(),
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

  factory GetWebAppSourceControlResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSourceControlResult(
      azureApiVersion: map['azureApiVersion'] as String,
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentRollbackEnabled: (() { final guardedValue = map['deploymentRollbackEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      gitHubActionConfiguration: (() { final guardedValue = map['gitHubActionConfiguration']; if (guardedValue == null) return null; return GitHubActionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      isGitHubAction: (() { final guardedValue = map['isGitHubAction']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isManualIntegration: (() { final guardedValue = map['isManualIntegration']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isMercurial: (() { final guardedValue = map['isMercurial']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

