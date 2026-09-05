// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_endpoint_storage_container_endpoint_storage_container_args_doc}
/// The set of arguments for EndpointStorageContainer.
/// {@endtemplate}
/// {@macro pulumi_iot_endpoint_storage_container_endpoint_storage_container_args_doc}
class EndpointStorageContainerArgs {
  /// Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String?>? authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  final pulumi.Input<int?>? batchFrequencyInSeconds;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authenticationType` is `keyBased`.
  final pulumi.Input<String?>? connectionString;
  /// The name of storage container in the storage account.
  final pulumi.Input<String> containerName;
  /// Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? encoding;
  /// URI of the Storage Container endpoint. This corresponds to the `primaryBlobEndpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authenticationType` is `identityBased`.
  final pulumi.Input<String?>? endpointUri;
  /// File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  final pulumi.Input<String?>? fileNameFormat;
  /// ID of the User Managed Identity used to authenticate against the storage endpoint.
  ///
  /// &gt; **Note:** `identityId` can only be specified when `authenticationType` is `identityBased`. It must be one of the `identityIds` of the Iot Hub. If not specified when `authenticationType` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String?>? identityId;
  /// The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  final pulumi.Input<int?>? maxChunkSizeInBytes;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscriptionId` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [EndpointStorageContainerArgs].
  /// [authenticationType] Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [batchFrequencyInSeconds] Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  /// [connectionString] The connection string for the endpoint. This attribute can only be specified and is mandatory when `authenticationType` is `keyBased`.
  /// [containerName] The name of storage container in the storage account.
  /// [encoding] Encoding that is used to serialize messages to blobs. Supported values are `Avro`, `AvroDeflate` and `JSON`. Default value is `Avro`. Changing this forces a new resource to be created.
  /// [endpointUri] URI of the Storage Container endpoint. This corresponds to the `primaryBlobEndpoint` of the parent storage account. This attribute can only be specified and is mandatory when `authenticationType` is `identityBased`.
  /// [fileNameFormat] File name format for the blob. All parameters are mandatory but can be reordered. Defaults to `{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}`.
  /// [identityId] ID of the User Managed Identity used to authenticate against the storage endpoint.
  /// [iothubId] The IoTHub ID for the endpoint. Changing this forces a new resource to be created.
  /// [maxChunkSizeInBytes] Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  /// [subscriptionId] The subscription ID for the endpoint.
  const EndpointStorageContainerArgs({
    this.authenticationType,
    this.batchFrequencyInSeconds,
    this.connectionString,
    required this.containerName,
    this.encoding,
    this.endpointUri,
    this.fileNameFormat,
    this.identityId,
    required this.iothubId,
    this.maxChunkSizeInBytes,
    this.name,
    required this.resourceGroupName,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'batchFrequencyInSeconds': ?batchFrequencyInSeconds,
      'connectionString': ?connectionString,
      'containerName': containerName,
      'encoding': ?encoding,
      'endpointUri': ?endpointUri,
      'fileNameFormat': ?fileNameFormat,
      'identityId': ?identityId,
      'iothubId': iothubId,
      'maxChunkSizeInBytes': ?maxChunkSizeInBytes,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointStorageContainerArgs.fromMap(Map<String, dynamic> map) {
    return EndpointStorageContainerArgs(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      batchFrequencyInSeconds: (() { final guardedValue = map['batchFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileNameFormat: (() { final guardedValue = map['fileNameFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityId: (() { final guardedValue = map['identityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iothubId: pulumi.Input.fromValue(map['iothubId'] as String),
      maxChunkSizeInBytes: (() { final guardedValue = map['maxChunkSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
