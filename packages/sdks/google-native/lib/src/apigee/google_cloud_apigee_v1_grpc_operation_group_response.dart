// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_grpc_operation_config_response.dart';

/// List of gRPC operation configuration details associated with Apigee API proxies.
class GoogleCloudApigeeV1GrpcOperationGroupResponse {
  /// List of operation configurations for either Apigee API proxies that are associated with this API product.
  final pulumi.Input<List<GoogleCloudApigeeV1GrpcOperationConfigResponse>> operationConfigs;

  /// Creates a new [GoogleCloudApigeeV1GrpcOperationGroupResponse].
  /// [operationConfigs] List of operation configurations for either Apigee API proxies that are associated with this API product.
  const GoogleCloudApigeeV1GrpcOperationGroupResponse({
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigs': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1GrpcOperationConfigResponse>, List<Map<String, dynamic>>>(operationConfigs, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1GrpcOperationConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudApigeeV1GrpcOperationGroupResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GrpcOperationGroupResponse(
      operationConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1GrpcOperationConfigResponse>(map['operationConfigs']!, (value) => GoogleCloudApigeeV1GrpcOperationConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

