// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicIngestionDataSourceSettingsAzureEventHubs {
  /// The Azure event hub client ID to use for ingestion.
  final pulumi.Input<String>? clientId;
  /// The Azure event hub to ingest data from.
  final pulumi.Input<String>? eventHub;
  /// The GCP service account to be used for Federated Identity authentication
  /// with Azure (via a `AssumeRoleWithWebIdentity` call for the provided
  /// role).
  final pulumi.Input<String>? gcpServiceAccount;
  /// The Azure event hub namespace to ingest data from.
  final pulumi.Input<String>? namespace;
  /// The name of the resource group within an Azure subscription.
  final pulumi.Input<String>? resourceGroup;
  /// The Azure event hub subscription ID to use for ingestion.
  final pulumi.Input<String>? subscriptionId;
  /// The Azure event hub tenant ID to use for ingestion.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [TopicIngestionDataSourceSettingsAzureEventHubs].
  /// [clientId] The Azure event hub client ID to use for ingestion.
  /// [eventHub] The Azure event hub to ingest data from.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [namespace] The Azure event hub namespace to ingest data from.
  /// [resourceGroup] The name of the resource group within an Azure subscription.
  /// [subscriptionId] The Azure event hub subscription ID to use for ingestion.
  /// [tenantId] The Azure event hub tenant ID to use for ingestion.
  TopicIngestionDataSourceSettingsAzureEventHubs({
    this.clientId,
    this.eventHub,
    this.gcpServiceAccount,
    this.namespace,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'eventHub': ?eventHub,
      'gcpServiceAccount': ?gcpServiceAccount,
      'namespace': ?namespace,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory TopicIngestionDataSourceSettingsAzureEventHubs.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsAzureEventHubs(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      eventHub: map['eventHub'] == null ? null : (map['eventHub']! as String).input(),
      gcpServiceAccount: map['gcpServiceAccount'] == null ? null : (map['gcpServiceAccount']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

