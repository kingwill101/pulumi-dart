// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubEndpoint {
  /// The type used to authenticate against the endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`.
  final pulumi.Input<int>? batchFrequencyInSeconds;
  /// The connection string for the endpoint. This attribute is mandatory and can only be specified when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? connectionString;
  /// The name of storage container in the storage account. This attribute is mandatory for endpoint type `AzureIotHub.StorageContainer`.
  final pulumi.Input<String>? containerName;
  /// Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? encoding;
  /// URI of the Service Bus or Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased` for endpoint type `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  final pulumi.Input<String>? endpointUri;
  /// Name of the Service Bus Queue/Topic or Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased` for endpoint type `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  final pulumi.Input<String>? entityPath;
  /// File name format for the blob. All parameters are mandatory but can be reordered. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  final pulumi.Input<String>? fileNameFormat;
  /// The ID of the User Managed Identity used to authenticate against the endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the IoT Hub. If `identity_id` is omitted when `authentication_type` is `identityBased`, then the System-Assigned Managed Identity of the IoT Hub will be used.
  ///
  /// > **Note:** An IoT Hub can only be updated to use the System-Assigned Managed Identity for `endpoint` since it is not possible to grant access to the endpoint until after creation. The extracted resources `azurerm_iothub_endpoint_*` can be used to configure Endpoints with the IoT Hub's System-Assigned Managed Identity without the need for an update.
  final pulumi.Input<String>? identityId;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`.
  final pulumi.Input<int>? maxChunkSizeInBytes;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`.
  final pulumi.Input<String> name;
  /// The resource group in which the endpoint will be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;
  /// The type of the endpoint. Possible values are `AzureIotHub.StorageContainer`, `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  final pulumi.Input<String> type;

  /// Creates a new [IoTHubEndpoint].
  /// [authenticationType] The type used to authenticate against the endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [batchFrequencyInSeconds] Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`.
  /// [connectionString] The connection string for the endpoint. This attribute is mandatory and can only be specified when `authentication_type` is `keyBased`.
  /// [containerName] The name of storage container in the storage account. This attribute is mandatory for endpoint type `AzureIotHub.StorageContainer`.
  /// [encoding] Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`. Changing this forces a new resource to be created.
  /// [endpointUri] URI of the Service Bus or Event Hubs Namespace endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased` for endpoint type `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  /// [entityPath] Name of the Service Bus Queue/Topic or Event Hub. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased` for endpoint type `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  /// [fileNameFormat] File name format for the blob. All parameters are mandatory but can be reordered. This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  /// [identityId] The ID of the User Managed Identity used to authenticate against the endpoint.
  /// [maxChunkSizeInBytes] Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). This attribute is applicable for endpoint type `AzureIotHub.StorageContainer`.
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`.
  /// [resourceGroupName] The resource group in which the endpoint will be created.
  /// [subscriptionId] The subscription ID for the endpoint.
  /// [type] The type of the endpoint. Possible values are `AzureIotHub.StorageContainer`, `AzureIotHub.ServiceBusQueue`, `AzureIotHub.ServiceBusTopic` or `AzureIotHub.EventHub`.
  IoTHubEndpoint({
    this.authenticationType,
    this.batchFrequencyInSeconds,
    this.connectionString,
    this.containerName,
    this.encoding,
    this.endpointUri,
    this.entityPath,
    this.fileNameFormat,
    this.identityId,
    this.maxChunkSizeInBytes,
    required this.name,
    this.resourceGroupName,
    this.subscriptionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'batchFrequencyInSeconds': ?batchFrequencyInSeconds,
      'connectionString': ?connectionString,
      'containerName': ?containerName,
      'encoding': ?encoding,
      'endpointUri': ?endpointUri,
      'entityPath': ?entityPath,
      'fileNameFormat': ?fileNameFormat,
      'identityId': ?identityId,
      'maxChunkSizeInBytes': ?maxChunkSizeInBytes,
      'name': name,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'type': type,
    };
  }

  factory IoTHubEndpoint.fromMap(Map<String, dynamic> map) {
    return IoTHubEndpoint(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      batchFrequencyInSeconds: map['batchFrequencyInSeconds'] == null ? null : (map['batchFrequencyInSeconds']! as int).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      entityPath: map['entityPath'] == null ? null : (map['entityPath']! as String).input(),
      fileNameFormat: map['fileNameFormat'] == null ? null : (map['fileNameFormat']! as String).input(),
      identityId: map['identityId'] == null ? null : (map['identityId']! as String).input(),
      maxChunkSizeInBytes: map['maxChunkSizeInBytes'] == null ? null : (map['maxChunkSizeInBytes']! as int).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

