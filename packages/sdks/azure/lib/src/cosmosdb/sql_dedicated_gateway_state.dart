// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlDedicatedGateway resources.
class SqlDedicatedGatewayState {
  /// The resource ID of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cosmosdbAccountId;
  /// The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`.
  final pulumi.Input<int>? instanceCount;
  /// The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`.
  final pulumi.Input<String>? instanceSize;

  /// Creates a new [SqlDedicatedGatewayState].
  /// [cosmosdbAccountId] The resource ID of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [instanceCount] The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`.
  /// [instanceSize] The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`.
  SqlDedicatedGatewayState({
    pulumi.Output<String>? cosmosdbAccountId,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? instanceSize,
  }) :
      cosmosdbAccountId = pulumi.Input.asOptionalInput<String>(cosmosdbAccountId),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      instanceSize = pulumi.Input.asOptionalInput<String>(instanceSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosdbAccountId': ?cosmosdbAccountId,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
    };
  }

  factory SqlDedicatedGatewayState.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayState(
      cosmosdbAccountId: map['cosmosdbAccountId'] == null ? null : pulumi.Output.create<String>(map['cosmosdbAccountId'] as String),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      instanceSize: map['instanceSize'] == null ? null : pulumi.Output.create<String>(map['instanceSize'] as String),
    );
  }
}

