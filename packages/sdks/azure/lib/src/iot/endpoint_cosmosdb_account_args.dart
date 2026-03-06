// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_endpoint_cosmosdb_account_endpoint_cosmosdb_account_args_doc}
/// The set of arguments for EndpointCosmosdbAccount.
/// {@endtemplate}
/// {@macro pulumi_iot_endpoint_cosmosdb_account_endpoint_cosmosdb_account_args_doc}
class EndpointCosmosdbAccountArgs {
  /// The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerName;
  /// The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The URI of the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> endpointUri;
  /// The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint.
  ///
  /// &gt; **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String>? identityId;
  /// The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the partition key associated with the Cosmos DB Container.
  final pulumi.Input<String>? partitionKeyName;
  /// The template for generating a synthetic partition key value for use within the Cosmos DB Container.
  final pulumi.Input<String>? partitionKeyTemplate;
  /// The primary key of the Cosmos DB Account.
  ///
  /// &gt; **Note:** `primary_key` must and can only be specified when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The secondary key of the Cosmos DB Account.
  ///
  /// &gt; **Note:** `secondary_key` must and can only be specified when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? secondaryKey;
  /// The subscription ID for the endpoint.
  ///
  /// &gt; **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointCosmosdbAccountArgs].
  /// [authenticationType] The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  /// [containerName] The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created.
  /// [databaseName] The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created.
  /// [endpointUri] The URI of the Cosmos DB Account. Changing this forces a new resource to be created.
  /// [identityId] The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint.
  /// [iothubId] The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created.
  /// [name] The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  /// [partitionKeyName] The name of the partition key associated with the Cosmos DB Container.
  /// [partitionKeyTemplate] The template for generating a synthetic partition key value for use within the Cosmos DB Container.
  /// [primaryKey] The primary key of the Cosmos DB Account.
  /// [resourceGroupName] The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created.
  /// [secondaryKey] The secondary key of the Cosmos DB Account.
  /// [subscriptionId] The subscription ID for the endpoint.
  const EndpointCosmosdbAccountArgs({
    this.authenticationType,
    required this.containerName,
    required this.databaseName,
    required this.endpointUri,
    this.identityId,
    required this.iothubId,
    this.name,
    this.partitionKeyName,
    this.partitionKeyTemplate,
    this.primaryKey,
    required this.resourceGroupName,
    this.secondaryKey,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'containerName': containerName,
      'databaseName': databaseName,
      'endpointUri': endpointUri,
      'identityId': ?identityId,
      'iothubId': iothubId,
      'name': ?name,
      'partitionKeyName': ?partitionKeyName,
      'partitionKeyTemplate': ?partitionKeyTemplate,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointCosmosdbAccountArgs.fromMap(Map<String, dynamic> map) {
    return EndpointCosmosdbAccountArgs(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endpointUri: pulumi.Input.fromValue(map['endpointUri'] as String),
      identityId: (() { final guardedValue = map['identityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iothubId: pulumi.Input.fromValue(map['iothubId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyName: (() { final guardedValue = map['partitionKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionKeyTemplate: (() { final guardedValue = map['partitionKeyTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

