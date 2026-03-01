// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';
import 'google_cloud_apigee_v1_operation.dart';
import 'google_cloud_apigee_v1_quota.dart';

/// Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.
class GoogleCloudApigeeV1OperationConfig {
  /// Name of the API proxy or remote service with which the resources, methods, and quota are associated.
  final String apiSource;
  /// Custom attributes associated with the operation.
  final List<GoogleCloudApigeeV1Attribute>? attributes;
  /// List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.
  final List<GoogleCloudApigeeV1Operation>? operations;
  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final GoogleCloudApigeeV1Quota? quota;

  /// Creates a new [GoogleCloudApigeeV1OperationConfig].
  /// [apiSource] Name of the API proxy or remote service with which the resources, methods, and quota are associated.
  /// [attributes] Custom attributes associated with the operation.
  /// [operations] List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.
  /// [quota] Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  GoogleCloudApigeeV1OperationConfig({
    required this.apiSource,
    this.attributes,
    this.operations,
    this.quota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiSource': apiSource,
      'attributes': ?attributes == null ? null : pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute, Map<String, dynamic>>(attributes!, (value) => value.toMap()),
      'operations': ?operations == null ? null : pulumi.Input.encodeList<GoogleCloudApigeeV1Operation, Map<String, dynamic>>(operations!, (value) => value.toMap()),
      'quota': ?quota == null ? null : quota!.toMap(),
    };
  }

  factory GoogleCloudApigeeV1OperationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1OperationConfig(
      apiSource: map['apiSource'] as String,
      attributes: map['attributes'] == null ? null : pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(map['attributes'], (value) => GoogleCloudApigeeV1Attribute.fromMap((value as Map).cast<String, dynamic>())),
      operations: map['operations'] == null ? null : pulumi.Input.decodeList<GoogleCloudApigeeV1Operation>(map['operations'], (value) => GoogleCloudApigeeV1Operation.fromMap((value as Map).cast<String, dynamic>())),
      quota: map['quota'] == null ? null : GoogleCloudApigeeV1Quota.fromMap((map['quota'] as Map).cast<String, dynamic>()),
    );
  }
}

