// ignore_for_file: unused_element, unnecessary_cast

import 'azure_dev_ops_resource_info.dart';
import 'git_hub_resource_info.dart';
import 'webhook.dart';

/// Resources created in user's repository for the source-control.
class RepositoryResourceInfo {
  /// Resources created in Azure DevOps for this source-control.
  final AzureDevOpsResourceInfo? azureDevOpsResourceInfo;
  /// Resources created in GitHub for this source-control.
  final GitHubResourceInfo? gitHubResourceInfo;
  /// The webhook object created for the source-control.
  final Webhook? webhook;

  /// Creates a new [RepositoryResourceInfo].
  /// [azureDevOpsResourceInfo] Resources created in Azure DevOps for this source-control.
  /// [gitHubResourceInfo] Resources created in GitHub for this source-control.
  /// [webhook] The webhook object created for the source-control.
  RepositoryResourceInfo({
    this.azureDevOpsResourceInfo,
    this.gitHubResourceInfo,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevOpsResourceInfo': ?azureDevOpsResourceInfo == null ? null : azureDevOpsResourceInfo!.toMap(),
      'gitHubResourceInfo': ?gitHubResourceInfo == null ? null : gitHubResourceInfo!.toMap(),
      'webhook': ?webhook == null ? null : webhook!.toMap(),
    };
  }

  factory RepositoryResourceInfo.fromMap(Map<String, dynamic> map) {
    return RepositoryResourceInfo(
      azureDevOpsResourceInfo: map['azureDevOpsResourceInfo'] == null ? null : AzureDevOpsResourceInfo.fromMap((map['azureDevOpsResourceInfo'] as Map).cast<String, dynamic>()),
      gitHubResourceInfo: map['gitHubResourceInfo'] == null ? null : GitHubResourceInfo.fromMap((map['gitHubResourceInfo'] as Map).cast<String, dynamic>()),
      webhook: map['webhook'] == null ? null : Webhook.fromMap((map['webhook'] as Map).cast<String, dynamic>()),
    );
  }
}

