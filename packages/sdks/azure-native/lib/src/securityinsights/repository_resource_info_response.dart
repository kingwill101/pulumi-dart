// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_resource_info_response.dart';
import 'git_hub_resource_info_response.dart';
import 'webhook_response.dart';

/// Resources created in user's repository for the source-control.
class RepositoryResourceInfoResponse {
  /// Resources created in Azure DevOps for this source-control.
  final pulumi.Input<AzureDevOpsResourceInfoResponse>? azureDevOpsResourceInfo;
  /// Resources created in GitHub for this source-control.
  final pulumi.Input<GitHubResourceInfoResponse>? gitHubResourceInfo;
  /// The webhook object created for the source-control.
  final pulumi.Input<WebhookResponse>? webhook;

  /// Creates a new [RepositoryResourceInfoResponse].
  /// [azureDevOpsResourceInfo] Resources created in Azure DevOps for this source-control.
  /// [gitHubResourceInfo] Resources created in GitHub for this source-control.
  /// [webhook] The webhook object created for the source-control.
  RepositoryResourceInfoResponse({
    this.azureDevOpsResourceInfo,
    this.gitHubResourceInfo,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureDevOpsResourceInfo': ?pulumi.Input.mapOptionalInputValue<AzureDevOpsResourceInfoResponse, Map<String, dynamic>>(azureDevOpsResourceInfo, (value) => value.toMap()),
      'gitHubResourceInfo': ?pulumi.Input.mapOptionalInputValue<GitHubResourceInfoResponse, Map<String, dynamic>>(gitHubResourceInfo, (value) => value.toMap()),
      'webhook': ?pulumi.Input.mapOptionalInputValue<WebhookResponse, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory RepositoryResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryResourceInfoResponse(
      azureDevOpsResourceInfo: map['azureDevOpsResourceInfo'] == null ? null : (AzureDevOpsResourceInfoResponse.fromMap((map['azureDevOpsResourceInfo']! as Map).cast<String, dynamic>())).input(),
      gitHubResourceInfo: map['gitHubResourceInfo'] == null ? null : (GitHubResourceInfoResponse.fromMap((map['gitHubResourceInfo']! as Map).cast<String, dynamic>())).input(),
      webhook: map['webhook'] == null ? null : (WebhookResponse.fromMap((map['webhook']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

