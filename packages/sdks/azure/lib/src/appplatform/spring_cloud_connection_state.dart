// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_connection_authentication.dart';
import 'spring_cloud_connection_secret_store.dart';

/// Input properties used for looking up and filtering SpringCloudConnection resources.
class SpringCloudConnectionState {
  /// The authentication info. An `authentication` block as defined below.
  final pulumi.Input<SpringCloudConnectionAuthentication>? authentication;
  final pulumi.Input<String>? clientType;
  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<SpringCloudConnectionSecretStore>? secretStore;
  /// The ID of the data source spring cloud. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudId;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String>? targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [SpringCloudConnectionState].
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [springCloudId] The ID of the data source spring cloud. Changing this forces a new resource to be created.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  SpringCloudConnectionState({
    pulumi.Output<SpringCloudConnectionAuthentication>? authentication,
    pulumi.Output<String>? clientType,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudConnectionSecretStore>? secretStore,
    pulumi.Output<String>? springCloudId,
    pulumi.Output<String>? targetResourceId,
    pulumi.Output<String>? vnetSolution,
  }) :
      authentication = pulumi.Input.asOptionalInput<SpringCloudConnectionAuthentication>(authentication),
      clientType = pulumi.Input.asOptionalInput<String>(clientType),
      name = pulumi.Input.asOptionalInput<String>(name),
      secretStore = pulumi.Input.asOptionalInput<SpringCloudConnectionSecretStore>(secretStore),
      springCloudId = pulumi.Input.asOptionalInput<String>(springCloudId),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      vnetSolution = pulumi.Input.asOptionalInput<String>(vnetSolution);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<SpringCloudConnectionAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'name': ?name,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<SpringCloudConnectionSecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'springCloudId': ?springCloudId,
      'targetResourceId': ?targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory SpringCloudConnectionState.fromMap(Map<String, dynamic> map) {
    return SpringCloudConnectionState(
      authentication: map['authentication'] == null ? null : pulumi.Output.create<SpringCloudConnectionAuthentication>(SpringCloudConnectionAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      clientType: map['clientType'] == null ? null : pulumi.Output.create<String>(map['clientType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      secretStore: map['secretStore'] == null ? null : pulumi.Output.create<SpringCloudConnectionSecretStore>(SpringCloudConnectionSecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>())),
      springCloudId: map['springCloudId'] == null ? null : pulumi.Output.create<String>(map['springCloudId'] as String),
      targetResourceId: map['targetResourceId'] == null ? null : pulumi.Output.create<String>(map['targetResourceId'] as String),
      vnetSolution: map['vnetSolution'] == null ? null : pulumi.Output.create<String>(map['vnetSolution'] as String),
    );
  }
}

