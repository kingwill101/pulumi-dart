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
    this.cosmosdbAccountId,
    this.instanceCount,
    this.instanceSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosdbAccountId': ?cosmosdbAccountId,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
    };
  }

  factory SqlDedicatedGatewayState.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayState(
      cosmosdbAccountId: (() {
        final guardedValue = map['cosmosdbAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceCount: (() {
        final guardedValue = map['instanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceSize: (() {
        final guardedValue = map['instanceSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
