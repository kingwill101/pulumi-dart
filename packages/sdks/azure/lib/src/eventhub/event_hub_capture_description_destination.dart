// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubCaptureDescriptionDestination {
  /// The Blob naming convention for archiving. e.g. `{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}`. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  final pulumi.Input<String> archiveNameFormat;
  /// The name of the Container within the Blob Storage Account where messages should be archived.
  final pulumi.Input<String> blobContainerName;
  /// The Name of the Destination where the capture should take place. At this time the only supported value is `EventHubArchive.AzureBlockBlob`.
  ///
  /// &gt; **Note:** At this time it's only possible to Capture EventHub messages to Blob Storage. There's [a Feature Request for the Azure SDK to add support for Capturing messages to Azure Data Lake here](https://github.com/Azure/azure-rest-api-specs/issues/2255).
  final pulumi.Input<String> name;
  /// The ID of the Blob Storage Account where messages should be archived.
  final pulumi.Input<String> storageAccountId;
  /// The id of the User Assigned Identity that is used to authenticate the Blob Storage Account where messages should be archived.
  ///
  /// &gt; **Note:** The `SystemAssigned` or `UserAssigned` managed identity must be `enabled` on the parent eventhub namespace, in order for the capture feature to be configured.
  ///
  /// &gt; **Note:** The managed identity used by the capture feature must be granted the `Storage Blob Data Contributor` role.
  final pulumi.Input<String?>? storageAuthenticationId;
  /// The identity used to authenticate the Blob Storage Account where messages should be archived. Possible values are `StorageSAS`, `SystemAssigned` or `UserAssigned`. Defaults to `StorageSAS`.
  final pulumi.Input<String?>? storageAuthenticationType;

  /// Creates a new [EventHubCaptureDescriptionDestination].
  /// [archiveNameFormat] The Blob naming convention for archiving. e.g. `{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}`. Here all the parameters (Namespace,EventHub .. etc) are mandatory irrespective of order
  /// [blobContainerName] The name of the Container within the Blob Storage Account where messages should be archived.
  /// [name] The Name of the Destination where the capture should take place. At this time the only supported value is `EventHubArchive.AzureBlockBlob`.
  /// [storageAccountId] The ID of the Blob Storage Account where messages should be archived.
  /// [storageAuthenticationId] The id of the User Assigned Identity that is used to authenticate the Blob Storage Account where messages should be archived.
  /// [storageAuthenticationType] The identity used to authenticate the Blob Storage Account where messages should be archived. Possible values are `StorageSAS`, `SystemAssigned` or `UserAssigned`. Defaults to `StorageSAS`.
  const EventHubCaptureDescriptionDestination({
    required this.archiveNameFormat,
    required this.blobContainerName,
    required this.name,
    required this.storageAccountId,
    this.storageAuthenticationId,
    this.storageAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveNameFormat': archiveNameFormat,
      'blobContainerName': blobContainerName,
      'name': name,
      'storageAccountId': storageAccountId,
      'storageAuthenticationId': ?storageAuthenticationId,
      'storageAuthenticationType': ?storageAuthenticationType,
    };
  }

  factory EventHubCaptureDescriptionDestination.fromMap(Map<String, dynamic> map) {
    return EventHubCaptureDescriptionDestination(
      archiveNameFormat: pulumi.Input.fromValue(map['archiveNameFormat'] as String),
      blobContainerName: pulumi.Input.fromValue(map['blobContainerName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageAuthenticationId: (() { final guardedValue = map['storageAuthenticationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAuthenticationType: (() { final guardedValue = map['storageAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
