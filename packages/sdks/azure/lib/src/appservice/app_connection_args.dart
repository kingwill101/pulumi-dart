// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_authentication.dart';
import 'app_connection_secret_store.dart';

/// {@template pulumi_appservice_app_connection_app_connection_args_doc}
/// The set of arguments for AppConnection.
/// {@endtemplate}
/// {@macro pulumi_appservice_app_connection_app_connection_args_doc}
class AppConnectionArgs {
  /// The authentication info. An `authentication` block as defined below.
  ///
  /// > **Note:** If a Managed Identity is used, this will need to be configured on the App Service.
  final pulumi.Input<AppConnectionAuthentication> authentication;
  final pulumi.Input<String>? clientType;
  /// The ID of the data source function app. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppId;
  /// The name of the service connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<AppConnectionSecretStore>? secretStore;
  /// The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  final pulumi.Input<String> targetResourceId;
  final pulumi.Input<String>? vnetSolution;

  /// Creates a new [AppConnectionArgs].
  /// [authentication] The authentication info. An `authentication` block as defined below.
  /// [clientType] Optional.
  /// [functionAppId] The ID of the data source function app. Changing this forces a new resource to be created.
  /// [name] The name of the service connection. Changing this forces a new resource to be created.
  /// [secretStore] Optional.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new resource to be created. Possible target resources are `Postgres`, `PostgresFlexible`, `Mysql`, `Sql`, `Redis`, `RedisEnterprise`, `CosmosCassandra`, `CosmosGremlin`, `CosmosMongo`, `CosmosSql`, `CosmosTable`, `StorageBlob`, `StorageQueue`, `StorageFile`, `StorageTable`, `AppConfig`, `EventHub`, `ServiceBus`, `SignalR`, `WebPubSub`, `ConfluentKafka`. The integration guide can be found [here](https://learn.microsoft.com/en-us/azure/service-connector/how-to-integrate-postgres).
  /// [vnetSolution] Optional.
  AppConnectionArgs({
    required pulumi.Output<AppConnectionAuthentication> authentication,
    pulumi.Output<String>? clientType,
    required pulumi.Output<String> functionAppId,
    pulumi.Output<String>? name,
    pulumi.Output<AppConnectionSecretStore>? secretStore,
    required pulumi.Output<String> targetResourceId,
    pulumi.Output<String>? vnetSolution,
  }) :
      authentication = pulumi.Input.asInput<AppConnectionAuthentication>(authentication),
      clientType = pulumi.Input.asOptionalInput<String>(clientType),
      functionAppId = pulumi.Input.asInput<String>(functionAppId),
      name = pulumi.Input.asOptionalInput<String>(name),
      secretStore = pulumi.Input.asOptionalInput<AppConnectionSecretStore>(secretStore),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId),
      vnetSolution = pulumi.Input.asOptionalInput<String>(vnetSolution);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<AppConnectionAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clientType': ?clientType,
      'functionAppId': functionAppId,
      'name': ?name,
      'secretStore': ?pulumi.Input.mapOptionalInputValue<AppConnectionSecretStore, Map<String, dynamic>>(secretStore, (value) => value.toMap()),
      'targetResourceId': targetResourceId,
      'vnetSolution': ?vnetSolution,
    };
  }

  factory AppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectionArgs(
      authentication: pulumi.Output.create<AppConnectionAuthentication>(AppConnectionAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      clientType: map['clientType'] == null ? null : pulumi.Output.create<String>(map['clientType'] as String),
      functionAppId: pulumi.Output.create<String>(map['functionAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      secretStore: map['secretStore'] == null ? null : pulumi.Output.create<AppConnectionSecretStore>(AppConnectionSecretStore.fromMap((map['secretStore'] as Map).cast<String, dynamic>())),
      targetResourceId: pulumi.Output.create<String>(map['targetResourceId'] as String),
      vnetSolution: map['vnetSolution'] == null ? null : pulumi.Output.create<String>(map['vnetSolution'] as String),
    );
  }
}

