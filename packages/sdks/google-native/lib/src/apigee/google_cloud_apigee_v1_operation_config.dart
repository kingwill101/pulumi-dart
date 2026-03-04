// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';
import 'google_cloud_apigee_v1_operation.dart';
import 'google_cloud_apigee_v1_quota.dart';

/// Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.
class GoogleCloudApigeeV1OperationConfig {
  /// Name of the API proxy or remote service with which the resources, methods, and quota are associated.
  final pulumi.Input<String> apiSource;

  /// Custom attributes associated with the operation.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.
  final pulumi.Input<List<GoogleCloudApigeeV1Operation>>? operations;

  /// Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.
  final pulumi.Input<GoogleCloudApigeeV1Quota>? quota;

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
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Attribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Attribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'operations':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Operation>,
            List<Map<String, dynamic>>
          >(
            operations,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Operation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'quota':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudApigeeV1Quota,
            Map<String, dynamic>
          >(quota, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1OperationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1OperationConfig(
      apiSource: pulumi.Input.fromValue(map['apiSource'] as String),
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
            guardedValue,
            (value) => GoogleCloudApigeeV1Attribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      operations: (() {
        final guardedValue = map['operations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudApigeeV1Operation>(
            guardedValue,
            (value) => GoogleCloudApigeeV1Operation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      quota: (() {
        final guardedValue = map['quota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudApigeeV1Quota.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
