// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_authentication.dart';
import 'connection_secret_store.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The ID of the data source web app. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServiceId;

  /// The authentication info. An `authentication` block as defined below.
  ///
  /// &gt; **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  final pulumi.Input<ConnectionAuthentication>? authentication;
  final pulumi.Input<String>? clientType;

  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<ConnectionSecretStore>? secretStore;

  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String>? targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [ConnectionState].
  /// [appServiceId] The ID of the data source web app. Changing this forces a new resource to be created.
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  ConnectionState({
    this.appServiceId,
    this.authentication,
    this.clientType,
    this.name,
    this.secretStore,
    this.targetResourceId,
    this.vnetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': ?appServiceId,
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'name': ?name,
      'secretStore':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionSecretStore,
            Map<String, dynamic>
          >(secretStore, (value) => value.toMap()),
      'targetResourceId': ?targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      appServiceId: (() {
        final guardedValue = map['appServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientType: (() {
        final guardedValue = map['clientType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretStore: (() {
        final guardedValue = map['secretStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionSecretStore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetResourceId: (() {
        final guardedValue = map['targetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetSolution: (() {
        final guardedValue = map['vnetSolution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
