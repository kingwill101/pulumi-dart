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
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHub: (() { final guardedValue = map['eventHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpServiceAccount: (() { final guardedValue = map['gcpServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

