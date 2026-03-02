// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EndpointCosmosdbAccount resources.
class EndpointCosmosdbAccountState {
  /// The type used to authenticate against the Cosmos DB Account endpoint. Possible values are `keyBased` and `identityBased`. Defaults to `keyBased`.
  final pulumi.Input<String>? authenticationType;
  /// The name of the Cosmos DB Container in the Cosmos DB Database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerName;
  /// The name of the Cosmos DB Database in the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The URI of the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? endpointUri;
  /// The ID of the User Managed Identity used to authenticate against the Cosmos DB Account endpoint.
  ///
  /// > **Note:** `identity_id` can only be specified when `authentication_type` is `identityBased`. It must be one of the `identity_ids` of the Iot Hub. If not specified when `authentication_type` is `identityBased`, System Assigned Managed Identity of the Iot Hub will be used.
  final pulumi.Input<String>? identityId;
  /// The ID of the IoT Hub to create the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubId;
  /// The name of the endpoint. The name must be unique across endpoint types. The following names are reserved: `events`, `operationsMonitoringEvents`, `fileNotifications` and `$default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the partition key associated with the Cosmos DB Container.
  final pulumi.Input<String>? partitionKeyName;
  /// The template for generating a synthetic partition key value for use within the Cosmos DB Container.
  final pulumi.Input<String>? partitionKeyTemplate;
  /// The primary key of the Cosmos DB Account.
  ///
  /// > **Note:** `primary_key` must and can only be specified when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group under which the Cosmos DB Account has been created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary key of the Cosmos DB Account.
  ///
  /// > **Note:** `secondary_key` must and can only be specified when `authentication_type` is `keyBased`.
  final pulumi.Input<String>? secondaryKey;
  /// The subscription ID for the endpoint.
  ///
  /// > **Note:** When `subscription_id` isn't specified it will be set to the subscription ID of the IoT Hub resource.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [EndpointCosmosdbAccountState].
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
  EndpointCosmosdbAccountState({
    this.authenticationType,
    this.containerName,
    this.databaseName,
    this.endpointUri,
    this.identityId,
    this.iothubId,
    this.name,
    this.partitionKeyName,
    this.partitionKeyTemplate,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryKey,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'containerName': ?containerName,
      'databaseName': ?databaseName,
      'endpointUri': ?endpointUri,
      'identityId': ?identityId,
      'iothubId': ?iothubId,
      'name': ?name,
      'partitionKeyName': ?partitionKeyName,
      'partitionKeyTemplate': ?partitionKeyTemplate,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory EndpointCosmosdbAccountState.fromMap(Map<String, dynamic> map) {
    return EndpointCosmosdbAccountState(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      identityId: map['identityId'] == null ? null : (map['identityId']! as String).input(),
      iothubId: map['iothubId'] == null ? null : (map['iothubId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partitionKeyName: map['partitionKeyName'] == null ? null : (map['partitionKeyName']! as String).input(),
      partitionKeyTemplate: map['partitionKeyTemplate'] == null ? null : (map['partitionKeyTemplate']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

