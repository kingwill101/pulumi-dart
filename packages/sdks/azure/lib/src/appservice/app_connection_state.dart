// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_authentication.dart';
import 'app_connection_secret_store.dart';

/// Input properties used for looking up and filtering AppConnection resources.
class AppConnectionState {
  /// The authentication info. An `authentication` block as defined below.
  ///
  /// &gt; **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  final pulumi.Input<AppConnectionAuthentication>? authentication;
  final pulumi.Input<String>? clientType;

  /// The ID of the data source function app. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppId;

  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<AppConnectionSecretStore>? secretStore;

  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String>? targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [AppConnectionState].
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [functionAppId] The ID of the data source function app. Changing this forces a new resource to be created.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  AppConnectionState({
    this.authentication,
    this.clientType,
    this.functionAppId,
    this.name,
    this.secretStore,
    this.targetResourceId,
    this.vnetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            AppConnectionAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'functionAppId': ?functionAppId,
      'name': ?name,
      'secretStore':
          ?pulumi.Input.mapOptionalInputValue<
            AppConnectionSecretStore,
            Map<String, dynamic>
          >(secretStore, (value) => value.toMap()),
      'targetResourceId': ?targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory AppConnectionState.fromMap(Map<String, dynamic> map) {
    return AppConnectionState(
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppConnectionAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientType: (() {
        final guardedValue = map['clientType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionAppId: (() {
        final guardedValue = map['functionAppId'];
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
          AppConnectionSecretStore.fromMap(
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
