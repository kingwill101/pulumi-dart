// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicIngestionDataSourceSettingAzureEventHub {
  /// The Azure event hub client ID to use for ingestion.
  final pulumi.Input<String> clientId;
  /// The Azure event hub to ingest data from.
  final pulumi.Input<String> eventHub;
  /// The GCP service account to be used for Federated Identity authentication
  /// with Azure (via a 'AssumeRoleWithWebIdentity' call for the provided
  /// role).
  final pulumi.Input<String> gcpServiceAccount;
  /// The Azure event hub namespace to ingest data from.
  final pulumi.Input<String> namespace;
  /// The name of the resource group within an Azure subscription.
  final pulumi.Input<String> resourceGroup;
  /// The Azure event hub subscription ID to use for ingestion.
  final pulumi.Input<String> subscriptionId;
  /// The Azure event hub tenant ID to use for ingestion.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetTopicIngestionDataSourceSettingAzureEventHub].
  /// [clientId] The Azure event hub client ID to use for ingestion.
  /// [eventHub] The Azure event hub to ingest data from.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [namespace] The Azure event hub namespace to ingest data from.
  /// [resourceGroup] The name of the resource group within an Azure subscription.
  /// [subscriptionId] The Azure event hub subscription ID to use for ingestion.
  /// [tenantId] The Azure event hub tenant ID to use for ingestion.
  const GetTopicIngestionDataSourceSettingAzureEventHub({
    required this.clientId,
    required this.eventHub,
    required this.gcpServiceAccount,
    required this.namespace,
    required this.resourceGroup,
    required this.subscriptionId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'eventHub': eventHub,
      'gcpServiceAccount': gcpServiceAccount,
      'namespace': namespace,
      'resourceGroup': resourceGroup,
      'subscriptionId': subscriptionId,
      'tenantId': tenantId,
    };
  }

  factory GetTopicIngestionDataSourceSettingAzureEventHub.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingAzureEventHub(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      eventHub: pulumi.Input.fromValue(map['eventHub'] as String),
      gcpServiceAccount: pulumi.Input.fromValue(map['gcpServiceAccount'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

