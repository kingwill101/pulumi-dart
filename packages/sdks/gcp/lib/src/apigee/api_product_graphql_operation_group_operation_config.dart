// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_graphql_operation_group_operation_config_attribute.dart';
import 'api_product_graphql_operation_group_operation_config_operation.dart';
import 'api_product_graphql_operation_group_operation_config_quota.dart';

class ApiProductGraphqlOperationGroupOperationConfig {
  /// Required. Name of the API proxy with which the gRPC operation and quota are associated.
  final pulumi.Input<String?>? apiSource;
  /// Custom attributes associated with the operation.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductGraphqlOperationGroupOperationConfigAttribute>?>? attributes;
  /// Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name.
  /// Note: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductGraphqlOperationGroupOperationConfigOperation>?>? operations;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGraphqlOperationGroupOperationConfigQuota?>? quota;

  /// Creates a new [ApiProductGraphqlOperationGroupOperationConfig].
  /// [apiSource] Required. Name of the API proxy with which the gRPC operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  const ApiProductGraphqlOperationGroupOperationConfig({
    this.apiSource,
    this.attributes,
    this.operations,
    this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': ?apiSource,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<ApiProductGraphqlOperationGroupOperationConfigAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<ApiProductGraphqlOperationGroupOperationConfigAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operations': ?pulumi.Input.mapOptionalInputValue<List<ApiProductGraphqlOperationGroupOperationConfigOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<ApiProductGraphqlOperationGroupOperationConfigOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quota': ?pulumi.Input.mapOptionalInputValue<ApiProductGraphqlOperationGroupOperationConfigQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
    };
  }

  factory ApiProductGraphqlOperationGroupOperationConfig.fromMap(Map<String, dynamic> map) {
    return ApiProductGraphqlOperationGroupOperationConfig(
      apiSource: (() { final guardedValue = map['apiSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProductGraphqlOperationGroupOperationConfigAttribute>(guardedValue, (value) => ApiProductGraphqlOperationGroupOperationConfigAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProductGraphqlOperationGroupOperationConfigOperation>(guardedValue, (value) => ApiProductGraphqlOperationGroupOperationConfigOperation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProductGraphqlOperationGroupOperationConfigQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
