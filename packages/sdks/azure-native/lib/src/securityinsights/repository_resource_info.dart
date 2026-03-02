// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_resource_info.dart';
import 'git_hub_resource_info.dart';
import 'webhook.dart';

/// Resources created in user's repository for the source-control.
class RepositoryResourceInfo {
  /// Resources created in Azure DevOps for this source-control.
  final pulumi.Input<AzureDevOpsResourceInfo>? azureDevOpsResourceInfo;
  /// Resources created in GitHub for this source-control.
  final pulumi.Input<GitHubResourceInfo>? gitHubResourceInfo;
  /// The webhook object created for the source-control.
  final pulumi.Input<Webhook>? webhook;

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
      'azureDevOpsResourceInfo': ?pulumi.Input.mapOptionalInputValue<AzureDevOpsResourceInfo, Map<String, dynamic>>(azureDevOpsResourceInfo, (value) => value.toMap()),
      'gitHubResourceInfo': ?pulumi.Input.mapOptionalInputValue<GitHubResourceInfo, Map<String, dynamic>>(gitHubResourceInfo, (value) => value.toMap()),
      'webhook': ?pulumi.Input.mapOptionalInputValue<Webhook, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory RepositoryResourceInfo.fromMap(Map<String, dynamic> map) {
    return RepositoryResourceInfo(
      azureDevOpsResourceInfo: map['azureDevOpsResourceInfo'] == null ? null : (AzureDevOpsResourceInfo.fromMap((map['azureDevOpsResourceInfo'] as Map).cast<String, dynamic>())).input(),
      gitHubResourceInfo: map['gitHubResourceInfo'] == null ? null : (GitHubResourceInfo.fromMap((map['gitHubResourceInfo'] as Map).cast<String, dynamic>())).input(),
      webhook: map['webhook'] == null ? null : (Webhook.fromMap((map['webhook'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

