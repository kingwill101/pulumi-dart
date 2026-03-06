// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the pairing of GraphQL operation types and the GraphQL operation name.
class GoogleCloudApigeeV1GraphQLOperation {
  /// GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  final pulumi.Input<String>? operation;
  /// GraphQL operation types. Valid values include `query` or `mutation`. **Note**: Apigee does not currently support `subscription` types.
  final pulumi.Input<List<String>> operationTypes;

  /// Creates a new [GoogleCloudApigeeV1GraphQLOperation].
  /// [operation] GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  /// [operationTypes] GraphQL operation types. Valid values include `query` or `mutation`. **Note**: Apigee does not currently support `subscription` types.
  const GoogleCloudApigeeV1GraphQLOperation({
    this.operation,
    required this.operationTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operation': ?operation,
      'operationTypes': operationTypes,
    };
  }

  factory GoogleCloudApigeeV1GraphQLOperation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperation(
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationTypes: pulumi.Input.fromValue((map['operationTypes'] as List).cast<String>()),
    );
  }
}

