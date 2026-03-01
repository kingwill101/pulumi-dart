// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_operation_group_operation_config.dart';

class ApiProductOperationGroup {
  /// Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include proxy or remoteservice. Defaults to proxy. Set to proxy when Apigee API proxies are associated with the API product. Set to remoteservice when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// Possible values are: `proxy`, `remoteservice`.
  final String? operationConfigType;
  /// Required. List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  /// Structure is documented below.
  final List<ApiProductOperationGroupOperationConfig>? operationConfigs;

  /// Creates a new [ApiProductOperationGroup].
  /// [operationConfigType] Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include proxy or remoteservice. Defaults to proxy. Set to proxy when Apigee API proxies are associated with the API product. Set to remoteservice when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// [operationConfigs] Required. List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  ApiProductOperationGroup({
    this.operationConfigType,
    this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigType': ?operationConfigType,
      'operationConfigs': ?operationConfigs == null ? null : pulumi.Input.encodeList<ApiProductOperationGroupOperationConfig, Map<String, dynamic>>(operationConfigs!, (value) => value.toMap()),
    };
  }

  factory ApiProductOperationGroup.fromMap(Map<String, dynamic> map) {
    return ApiProductOperationGroup(
      operationConfigType: map['operationConfigType'] == null ? null : map['operationConfigType'] as String,
      operationConfigs: map['operationConfigs'] == null ? null : pulumi.Input.decodeList<ApiProductOperationGroupOperationConfig>(map['operationConfigs'], (value) => ApiProductOperationGroupOperationConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

