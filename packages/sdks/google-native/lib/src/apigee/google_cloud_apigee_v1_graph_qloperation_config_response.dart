// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_graph_qloperation_response.dart';
import 'google_cloud_apigee_v1_quota_response.dart';

/// Binds the resources in a proxy or remote service with the GraphQL operation and its associated quota enforcement.
class GoogleCloudApigeeV1GraphQLOperationConfigResponse {
  /// Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.
  final pulumi.Input<String> apiSource;
  /// Custom attributes associated with the operation.
  final pulumi.Input<List<GoogleCloudApigeeV1AttributeResponse>> attributes;
  /// List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  final pulumi.Input<List<GoogleCloudApigeeV1GraphQLOperationResponse>> operations;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final pulumi.Input<GoogleCloudApigeeV1QuotaResponse> quota;

  /// Creates a new [GoogleCloudApigeeV1GraphQLOperationConfigResponse].
  /// [apiSource] Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  const GoogleCloudApigeeV1GraphQLOperationConfigResponse({
    required this.apiSource,
    required this.attributes,
    required this.operations,
    required this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': apiSource,
      'attributes': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1AttributeResponse>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1AttributeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operations': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1GraphQLOperationResponse>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1GraphQLOperationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quota': pulumi.Input.mapInputValue<GoogleCloudApigeeV1QuotaResponse, Map<String, dynamic>>(quota, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1GraphQLOperationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperationConfigResponse(
      apiSource: pulumi.Input.fromValue(map['apiSource'] as String),
      attributes: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(map['attributes']!, (value) => GoogleCloudApigeeV1AttributeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      operations: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1GraphQLOperationResponse>(map['operations']!, (value) => GoogleCloudApigeeV1GraphQLOperationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      quota: pulumi.Input.fromValue(GoogleCloudApigeeV1QuotaResponse.fromMap((map['quota']! as Map).cast<String, dynamic>())),
    );
  }
}

