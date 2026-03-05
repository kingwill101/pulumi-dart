// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_connection_authentication.dart';
import 'spring_cloud_connection_secret_store.dart';

/// {@template pulumi_appplatform_spring_cloud_connection_spring_cloud_connection_args_doc}
/// The set of arguments for SpringCloudConnection.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_connection_spring_cloud_connection_args_doc}
class SpringCloudConnectionArgs {
  /// The authentication info. An `authentication` block as defined below.
  final pulumi.Input<SpringCloudConnectionAuthentication> authentication;
  final pulumi.Input<String>? clientType;
  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<SpringCloudConnectionSecretStore>? secretStore;
  /// The ID of the data source spring cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudId;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String> targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [SpringCloudConnectionArgs].
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [springCloudId] The ID of the data source spring cloud. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  SpringCloudConnectionArgs({
    required this.authentication,
    this.clientType,
    this.name,
    this.secretStore,
    required this.springCloudId,
    required this.targetResourceId,
    this.vnetSolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<SpringCloudConnectionAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'name': ?name,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SpringCloudConnectionSecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'springCloudId': springCloudId,
      'targetResourceId': targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory SpringCloudConnectionArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudConnectionArgs(
      authentication: pulumi.Input.fromValue(SpringCloudConnectionAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      clientType: (() { final guardedValue = map['clientType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudConnectionSecretStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      springCloudId: pulumi.Input.fromValue(map['springCloudId'] as String),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
      vnetSolution: (() { final guardedValue = map['vnetSolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

