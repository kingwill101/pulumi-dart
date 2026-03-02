// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointStorageContainer resources.
class EndpointStorageContainerState {
  /// Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  final pulumi.Input<int>? batchFrequencyInSeconds;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? connectionString;
  /// The name of storage container in the storage account.
  final pulumi.Input<String>? containerName;
  /// Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? encoding;
  /// URI of the Storage Container endpoint. This corresponds to the `primary_blob_endpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  final pulumi.Input<String>? endpointUri;
  /// File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  final pulumi.Input<String>? fileNameFormat;
  /// ID of the User Managed Identity used to authenticate against the storage endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String>? identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubId;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  final pulumi.Input<int>? maxChunkSizeInBytes;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointStorageContainerState].
  /// [authenticationType] Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [batchFrequencyInSeconds] Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  /// [connectionString] The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  /// [containerName] The name of storage container in the storage account.
  /// [encoding] Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created.
  /// [endpointUri] URI of the Storage Container endpoint. This corresponds to the `primary_blob_endpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authentication_type` is `identityBased`.
  /// [fileNameFormat] File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  /// [identityId] ID of the User Managed Identity used to authenticate against the storage endpoint.
  /// [iothubId] The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  /// [maxChunkSizeInBytes] Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription ID for the endpoint.
  EndpointStorageContainerState({
    this.authenticationType,
    this.batchFrequencyInSeconds,
    this.connectionString,
    this.containerName,
    this.encoding,
    this.endpointUri,
    this.fileNameFormat,
    this.identityId,
    this.iothubId,
    this.maxChunkSizeInBytes,
    this.name,
    this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'batchFrequencyInSeconds': ?batchFrequencyInSeconds,
      'connectionString': ?connectionString,
      'containerName': ?containerName,
      'encoding': ?encoding,
      'endpointUri': ?endpointUri,
      'fileNameFormat': ?fileNameFormat,
      'identityId': ?identityId,
      'iothubId': ?iothubId,
      'maxChunkSizeInBytes': ?maxChunkSizeInBytes,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointStorageContainerState.fromMap(Map<String, dynamic> map) {
    return EndpointStorageContainerState(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      batchFrequencyInSeconds: map['batchFrequencyInSeconds'] == null ? null : (map['batchFrequencyInSeconds'] as int).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding'] as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri'] as String).input(),
      fileNameFormat: map['fileNameFormat'] == null ? null : (map['fileNameFormat'] as String).input(),
      identityId: map['identityId'] == null ? null : (map['identityId'] as String).input(),
      iothubId: map['iothubId'] == null ? null : (map['iothubId'] as String).input(),
      maxChunkSizeInBytes: map['maxChunkSizeInBytes'] == null ? null : (map['maxChunkSizeInBytes'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

