// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_authentication.dart';
import 'connection_secret_store.dart';

/// {@template pulumi_appservice_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_appservice_connection_connection_args_doc}
class ConnectionArgs {
  /// The ID of the data source web app. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceId;
  /// The authentication info. An `authentication` block as defined below.
  ///
  /// > **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  final pulumi.Input<ConnectionAuthentication> authentication;
  final pulumi.Input<String>? clientType;
  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<ConnectionSecretStore>? secretStore;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String> targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [ConnectionArgs].
  /// [appServiceId] The ID of the data source web app. Changing this forces a new resource to be created.
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  ConnectionArgs({
    required this.appServiceId,
    required this.authentication,
    this.clientType,
    this.name,
    this.secretStore,
    required this.targetResourceId,
    this.vnetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'authentication': pulumi.Input.mapInputValue<ConnectionAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'name': ?name,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<ConnectionSecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetResourceId': targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      appServiceId: (map['appServiceId'] as String).input(),
      authentication: (ConnectionAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      clientType: map['clientType'] == null ? null : (map['clientType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secretStore: map['secretStore'] == null ? null : (ConnectionSecretStore.fromMap((map['secretStore']! as Map).cast<String, dynamic>())).input(),
      targetResourceId: (map['targetResourceId'] as String).input(),
      vnetSolution: map['vnetSolution'] == null ? null : (map['vnetSolution']! as String).input(),
    );
  }
}

