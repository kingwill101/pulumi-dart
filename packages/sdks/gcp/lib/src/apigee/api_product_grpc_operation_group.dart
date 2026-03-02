// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_grpc_operation_group_operation_config.dart';

class ApiProductGrpcOperationGroup {
  /// Required. List of operation configurations for either Apigee API proxies that are associated with this API product.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductGrpcOperationGroupOperationConfig>>? operationConfigs;

  /// Creates a new [ApiProductGrpcOperationGroup].
  /// [operationConfigs] Required. List of operation configurations for either Apigee API proxies that are associated with this API product.
  ApiProductGrpcOperationGroup({
    this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApiProductGrpcOperationGroupOperationConfig>, List<Map<String, dynamic>>>(operationConfigs, (value) => pulumi.Input.encodeList<ApiProductGrpcOperationGroupOperationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiProductGrpcOperationGroup.fromMap(Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroup(
      operationConfigs: map['operationConfigs'] == null ? null : (pulumi.Input.decodeList<ApiProductGrpcOperationGroupOperationConfig>(map['operationConfigs'], (value) => ApiProductGrpcOperationGroupOperationConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

