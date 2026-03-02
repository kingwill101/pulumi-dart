// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProductGraphqlOperationGroupOperationConfigOperation {
  /// GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  final pulumi.Input<String>? operation;
  /// Required. GraphQL operation types. Valid values include query or mutation.
  /// Note: Apigee does not currently support subscription types.
  final pulumi.Input<List<String>>? operationTypes;

  /// Creates a new [ApiProductGraphqlOperationGroupOperationConfigOperation].
  /// [operation] GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.
  /// [operationTypes] Required. GraphQL operation types. Valid values include query or mutation.
  ApiProductGraphqlOperationGroupOperationConfigOperation({
    this.operation,
    this.operationTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operation': ?operation,
      'operationTypes': ?operationTypes,
    };
  }

  factory ApiProductGraphqlOperationGroupOperationConfigOperation.fromMap(Map<String, dynamic> map) {
    return ApiProductGraphqlOperationGroupOperationConfigOperation(
      operation: map['operation'] == null ? null : (map['operation'] as String).input(),
      operationTypes: map['operationTypes'] == null ? null : ((map['operationTypes'] as List).cast<String>()).input(),
    );
  }
}

