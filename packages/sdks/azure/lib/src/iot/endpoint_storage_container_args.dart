// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_endpoint_storage_container_endpoint_storage_container_args_doc}
/// The set of arguments for EndpointStorageContainer.
/// {@endtemplate}
/// {@macro pulumi_iot_endpoint_storage_container_endpoint_storage_container_args_doc}
class EndpointStorageContainerArgs {
  /// Type used to authenticate against the storage endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  final pulumi.Input<int>? batchFrequencyInSeconds;
  /// The connection string for the endpoint. This attribute can only be specified and is mandatory when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? connectionString;
  /// The name of storage container in the storage account.
  final pulumi.Input<String> containerName;
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
  final pulumi.Input<String> iothubId;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  final pulumi.Input<int>? maxChunkSizeInBytes;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group under which the Storage Container has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointStorageContainerArgs].
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
  EndpointStorageContainerArgs({
    pulumi.Output<String>? authenticationType,
    pulumi.Output<int>? batchFrequencyInSeconds,
    pulumi.Output<String>? connectionString,
    required pulumi.Output<String> containerName,
    pulumi.Output<String>? encoding,
    pulumi.Output<String>? endpointUri,
    pulumi.Output<String>? fileNameFormat,
    pulumi.Output<String>? identityId,
    required pulumi.Output<String> iothubId,
    pulumi.Output<int>? maxChunkSizeInBytes,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      authenticationType = pulumi.Input.asOptionalInput<String>(authenticationType),
      batchFrequencyInSeconds = pulumi.Input.asOptionalInput<int>(batchFrequencyInSeconds),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      containerName = pulumi.Input.asInput<String>(containerName),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      endpointUri = pulumi.Input.asOptionalInput<String>(endpointUri),
      fileNameFormat = pulumi.Input.asOptionalInput<String>(fileNameFormat),
      identityId = pulumi.Input.asOptionalInput<String>(identityId),
      iothubId = pulumi.Input.asInput<String>(iothubId),
      maxChunkSizeInBytes = pulumi.Input.asOptionalInput<int>(maxChunkSizeInBytes),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

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
      authenticationType: map['authenticationType'] == null ? null : pulumi.Output.create<String>(map['authenticationType'] as String),
      batchFrequencyInSeconds: map['batchFrequencyInSeconds'] == null ? null : pulumi.Output.create<int>(map['batchFrequencyInSeconds'] as int),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      containerName: pulumi.Output.create<String>(map['containerName'] as String),
      encoding: map['encoding'] == null ? null : pulumi.Output.create<String>(map['encoding'] as String),
      endpointUri: map['endpointUri'] == null ? null : pulumi.Output.create<String>(map['endpointUri'] as String),
      fileNameFormat: map['fileNameFormat'] == null ? null : pulumi.Output.create<String>(map['fileNameFormat'] as String),
      identityId: map['identityId'] == null ? null : pulumi.Output.create<String>(map['identityId'] as String),
      iothubId: pulumi.Output.create<String>(map['iothubId'] as String),
      maxChunkSizeInBytes: map['maxChunkSizeInBytes'] == null ? null : pulumi.Output.create<int>(map['maxChunkSizeInBytes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

