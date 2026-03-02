// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_graph_qloperation_config_response.dart';

/// List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
class GoogleCloudApigeeV1GraphQLOperationGroupResponse {
  /// Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  final pulumi.Input<String> operationConfigType;
  /// List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  final pulumi.Input<List<GoogleCloudApigeeV1GraphQLOperationConfigResponse>> operationConfigs;

  /// Creates a new [GoogleCloudApigeeV1GraphQLOperationGroupResponse].
  /// [operationConfigType] Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// [operationConfigs] List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  GoogleCloudApigeeV1GraphQLOperationGroupResponse({
    required this.operationConfigType,
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigType': operationConfigType,
      'operationConfigs': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1GraphQLOperationConfigResponse>, List<Map<String, dynamic>>>(operationConfigs, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1GraphQLOperationConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudApigeeV1GraphQLOperationGroupResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperationGroupResponse(
      operationConfigType: (map['operationConfigType'] as String).input(),
      operationConfigs: (pulumi.Input.decodeList<GoogleCloudApigeeV1GraphQLOperationConfigResponse>(map['operationConfigs'], (value) => GoogleCloudApigeeV1GraphQLOperationConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

