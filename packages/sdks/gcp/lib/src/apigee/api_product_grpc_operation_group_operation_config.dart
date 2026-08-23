// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_product_grpc_operation_group_operation_config_attribute.dart';
import 'api_product_grpc_operation_group_operation_config_quota.dart';

class ApiProductGrpcOperationGroupOperationConfig {
  /// Required. Name of the API proxy with which the gRPC operation and quota are associated.
  final pulumi.Input<String>? apiSource;
  /// Custom attributes associated with the operation.
  /// Structure is documented below.
  final pulumi.Input<List<ApiProductGrpcOperationGroupOperationConfigAttribute>>? attributes;
  /// List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy.
  /// Example: Given a proxy that is configured to serve com.petstore.PetService, the methods com.petstore.PetService.ListPets and com.petstore.PetService.GetPet would be specified here as simply ["ListPets", "GetPet"].
  /// Note: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  final pulumi.Input<List<String>>? methods;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  /// Structure is documented below.
  final pulumi.Input<ApiProductGrpcOperationGroupOperationConfigQuota>? quota;
  /// Required. gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  final pulumi.Input<String>? service;

  /// Creates a new [ApiProductGrpcOperationGroupOperationConfig].
  /// [apiSource] Required. Name of the API proxy with which the gRPC operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [methods] List of unqualified gRPC method names for the proxy to which quota will be applied. If this field is empty, the Quota will apply to all operations on the gRPC service defined on the proxy.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  /// [service] Required. gRPC Service name associated to be associated with the API proxy, on which quota rules can be applied upon.
  const ApiProductGrpcOperationGroupOperationConfig({
    this.apiSource,
    this.attributes,
    this.methods,
    this.quota,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': ?apiSource,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<ApiProductGrpcOperationGroupOperationConfigAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<ApiProductGrpcOperationGroupOperationConfigAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methods': ?methods,
      'quota': ?pulumi.Input.mapOptionalInputValue<ApiProductGrpcOperationGroupOperationConfigQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'service': ?service,
    };
  }

  factory ApiProductGrpcOperationGroupOperationConfig.fromMap(Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroupOperationConfig(
      apiSource: (() { final guardedValue = map['apiSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProductGrpcOperationGroupOperationConfigAttribute>(guardedValue, (value) => ApiProductGrpcOperationGroupOperationConfigAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProductGrpcOperationGroupOperationConfigQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
