// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_sql_dedicated_gateway_sql_dedicated_gateway_args_doc}
/// The set of arguments for SqlDedicatedGateway.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_dedicated_gateway_sql_dedicated_gateway_args_doc}
class SqlDedicatedGatewayArgs {
  /// The resource ID of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cosmosdbAccountId;
  /// The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`.
  final pulumi.Input<int> instanceCount;
  /// The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`.
  final pulumi.Input<String> instanceSize;

  /// Creates a new [SqlDedicatedGatewayArgs].
  /// [cosmosdbAccountId] The resource ID of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [instanceCount] The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`.
  /// [instanceSize] The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`.
  SqlDedicatedGatewayArgs({
    required pulumi.Output<String> cosmosdbAccountId,
    required pulumi.Output<int> instanceCount,
    required pulumi.Output<String> instanceSize,
  }) :
      cosmosdbAccountId = pulumi.Input.asInput<String>(cosmosdbAccountId),
      instanceCount = pulumi.Input.asInput<int>(instanceCount),
      instanceSize = pulumi.Input.asInput<String>(instanceSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosdbAccountId': cosmosdbAccountId,
      'instanceCount': instanceCount,
      'instanceSize': instanceSize,
    };
  }

  factory SqlDedicatedGatewayArgs.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayArgs(
      cosmosdbAccountId: pulumi.Output.create<String>(map['cosmosdbAccountId'] as String),
      instanceCount: pulumi.Output.create<int>(map['instanceCount'] as int),
      instanceSize: pulumi.Output.create<String>(map['instanceSize'] as String),
    );
  }
}

