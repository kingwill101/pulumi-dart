// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubCaptureDescriptionDestination {
  /// The Blob naming convention for archiving. e.g. `{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}`. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  final pulumi.Input<String> archiveNameFormat;
  /// The name of the Container within the Blob Storage Account where messages should be archived.
  final pulumi.Input<String> blobContainerName;
  /// The Name of the Destination where the capture should take place. At this time the only supported value is `EventHubArchive.AzureBlockBlob`.
  ///
  /// > **Note:** At this time it's only possible to Capture EventHub messages to Blob Storage. There's [a Feature Request for the Azure SDK to add support for Capturing messages to Azure Data Lake here](https://github.com/Azure/azure-rest-api-specs/issues/2255).
  final pulumi.Input<String> name;
  /// The ID of the Blob Storage Account where messages should be archived.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [EventHubCaptureDescriptionDestination].
  /// [archiveNameFormat] The Blob naming convention for archiving. e.g. `{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}`. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  /// [blobContainerName] The name of the Container within the Blob Storage Account where messages should be archived.
  /// [name] The Name of the Destination where the capture should take place. At this time the only supported value is `EventHubArchive.AzureBlockBlob`.
  /// [storageAccountId] The ID of the Blob Storage Account where messages should be archived.
  EventHubCaptureDescriptionDestination({
    required this.archiveNameFormat,
    required this.blobContainerName,
    required this.name,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveNameFormat': archiveNameFormat,
      'blobContainerName': blobContainerName,
      'name': name,
      'storageAccountId': storageAccountId,
    };
  }

  factory EventHubCaptureDescriptionDestination.fromMap(Map<String, dynamic> map) {
    return EventHubCaptureDescriptionDestination(
      archiveNameFormat: (map['archiveNameFormat'] as String).input(),
      blobContainerName: (map['blobContainerName'] as String).input(),
      name: (map['name'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
    );
  }
}

