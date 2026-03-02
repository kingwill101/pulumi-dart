// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';
import 'google_cloud_apigee_v1_graph_qloperation.dart';
import 'google_cloud_apigee_v1_quota.dart';

/// Binds the resources in a proxy or remote service with the GraphQL operation and its associated quota enforcement.
class GoogleCloudApigeeV1GraphQLOperationConfig {
  /// Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.
  final pulumi.Input<String> apiSource;
  /// Custom attributes associated with the operation.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;
  /// List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  final pulumi.Input<List<GoogleCloudApigeeV1GraphQLOperation>> operations;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final pulumi.Input<GoogleCloudApigeeV1Quota>? quota;

  /// Creates a new [GoogleCloudApigeeV1GraphQLOperationConfig].
  /// [apiSource] Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  GoogleCloudApigeeV1GraphQLOperationConfig({
    required this.apiSource,
    this.attributes,
    required this.operations,
    this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': apiSource,
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operations': pulumi.Input.mapInputValue<List<GoogleCloudApigeeV1GraphQLOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1GraphQLOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quota': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1Quota, Map<String, dynamic>>(quota, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1GraphQLOperationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1GraphQLOperationConfig(
      apiSource: (map['apiSource'] as String).input(),
      attributes: map['attributes'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(map['attributes']!, (value) => GoogleCloudApigeeV1Attribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operations: (pulumi.Input.decodeList<GoogleCloudApigeeV1GraphQLOperation>(map['operations'], (value) => GoogleCloudApigeeV1GraphQLOperation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quota: map['quota'] == null ? null : (GoogleCloudApigeeV1Quota.fromMap((map['quota']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

