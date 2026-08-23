// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAzureEventHubSettings {
  /// SAS token
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? azureSasToken;
  /// Blob store connection string for authentication.
  final pulumi.Input<String>? azureStorageConnectionString;
  /// Blob storage container name.
  final pulumi.Input<String>? azureStorageContainer;
  /// Event hub consumer group to read from.
  final pulumi.Input<String> consumerGroup;
  /// Event hub connection string for authentication.
  final pulumi.Input<String> eventHubConnectionString;
  /// (Output)
  /// Event hub namespace
  final pulumi.Input<String>? eventHubNamespace;
  /// Event hub to read from.
  final pulumi.Input<String> name;

  /// Creates a new [FeedDetailsAzureEventHubSettings].
  /// [azureSasToken] SAS token
  /// [azureStorageConnectionString] Blob store connection string for authentication.
  /// [azureStorageContainer] Blob storage container name.
  /// [consumerGroup] Event hub consumer group to read from.
  /// [eventHubConnectionString] Event hub connection string for authentication.
  /// [eventHubNamespace] (Output)
  /// [name] Event hub to read from.
  const FeedDetailsAzureEventHubSettings({
    this.azureSasToken,
    this.azureStorageConnectionString,
    this.azureStorageContainer,
    required this.consumerGroup,
    required this.eventHubConnectionString,
    this.eventHubNamespace,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSasToken': ?azureSasToken,
      'azureStorageConnectionString': ?azureStorageConnectionString,
      'azureStorageContainer': ?azureStorageContainer,
      'consumerGroup': consumerGroup,
      'eventHubConnectionString': eventHubConnectionString,
      'eventHubNamespace': ?eventHubNamespace,
      'name': name,
    };
  }

  factory FeedDetailsAzureEventHubSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureEventHubSettings(
      azureSasToken: (() { final guardedValue = map['azureSasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureStorageConnectionString: (() { final guardedValue = map['azureStorageConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureStorageContainer: (() { final guardedValue = map['azureStorageContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      eventHubConnectionString: pulumi.Input.fromValue(map['eventHubConnectionString'] as String),
      eventHubNamespace: (() { final guardedValue = map['eventHubNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
