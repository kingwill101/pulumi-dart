// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_operation_config_response.dart';

/// List of operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.
class GoogleCloudApigeeV1OperationGroupResponse {
  /// Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  final pulumi.Input<String> operationConfigType;

  /// List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  final pulumi.Input<List<GoogleCloudApigeeV1OperationConfigResponse>>
  operationConfigs;

  /// Creates a new [GoogleCloudApigeeV1OperationGroupResponse].
  /// [operationConfigType] Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.
  /// [operationConfigs] List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.
  GoogleCloudApigeeV1OperationGroupResponse({
    required this.operationConfigType,
    required this.operationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationConfigType': operationConfigType,
      'operationConfigs':
          pulumi.Input.mapInputValue<
            List<GoogleCloudApigeeV1OperationConfigResponse>,
            List<Map<String, dynamic>>
          >(
            operationConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1OperationConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudApigeeV1OperationGroupResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1OperationGroupResponse(
      operationConfigType: pulumi.Input.fromValue(
        map['operationConfigType'] as String,
      ),
      operationConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudApigeeV1OperationConfigResponse>(
          map['operationConfigs']!,
          (value) => GoogleCloudApigeeV1OperationConfigResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
