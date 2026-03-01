// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instances_bulk_insert_operation_metadata_response.dart';
import 'operation_error_response.dart';
import 'operation_warnings_item_response.dart';
import 'set_common_instance_metadata_operation_metadata_response.dart';

/// Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/{$api_version}/globalOperations) * [Regional](/compute/docs/reference/rest/{$api_version}/regionOperations) * [Zonal](/compute/docs/reference/rest/{$api_version}/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zoneOperations` resource. For more information, read Global, Regional, and Zonal Resources.
class OperationResponse {
  /// The value of `requestId` if you provided it in the request. Not present otherwise.
  final String clientOperationId;
  /// [Deprecated] This field is deprecated.
  final String creationTimestamp;
  /// A textual description of the operation, which is set when the operation is created.
  final String description;
  /// The time that this operation was completed. This value is in RFC3339 text format.
  final String endTime;
  /// If errors are generated during processing of the operation, this field will be populated.
  final OperationErrorResponse error;
  /// If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.
  final String httpErrorMessage;
  /// If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.
  final int httpErrorStatusCode;
  /// The time that this operation was requested. This value is in RFC3339 text format.
  final String insertTime;
  final InstancesBulkInsertOperationMetadataResponse instancesBulkInsertOperationMetadata;
  /// Type of the resource. Always `compute#operation` for Operation resources.
  final String kind;
  /// Name of the operation.
  final String name;
  /// An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.
  final String operationGroupId;
  /// The type of operation, such as `insert`, `update`, or `delete`, and so on.
  final String operationType;
  /// An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
  final int progress;
  /// The URL of the region where the operation resides. Only applicable when performing regional operations.
  final String region;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// If the operation is for projects.setCommonInstanceMetadata, this field will contain information on all underlying zonal actions and their state.
  final SetCommonInstanceMetadataOperationMetadataResponse setCommonInstanceMetadataOperationMetadata;
  /// The time that this operation was started by the server. This value is in RFC3339 text format.
  final String startTime;
  /// The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.
  final String status;
  /// An optional textual description of the current status of the operation.
  final String statusMessage;
  /// The unique target ID, which identifies a specific incarnation of the target resource.
  final String targetId;
  /// The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
  final String targetLink;
  /// User who requested the operation, for example: `user@example.com` or `alice_smith_identifier (global/workforcePools/example-com-us-employees)`.
  final String user;
  /// If warning messages are generated during processing of the operation, this field will be populated.
  final List<OperationWarningsItemResponse> warnings;
  /// The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
  final String zone;

  /// Creates a new [OperationResponse].
  /// [clientOperationId] The value of `requestId` if you provided it in the request. Not present otherwise.
  /// [creationTimestamp] [Deprecated] This field is deprecated.
  /// [description] A textual description of the operation, which is set when the operation is created.
  /// [endTime] The time that this operation was completed. This value is in RFC3339 text format.
  /// [error] If errors are generated during processing of the operation, this field will be populated.
  /// [httpErrorMessage] If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.
  /// [httpErrorStatusCode] If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.
  /// [insertTime] The time that this operation was requested. This value is in RFC3339 text format.
  /// [instancesBulkInsertOperationMetadata] Required.
  /// [kind] Type of the resource. Always `compute#operation` for Operation resources.
  /// [name] Name of the operation.
  /// [operationGroupId] An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.
  /// [operationType] The type of operation, such as `insert`, `update`, or `delete`, and so on.
  /// [progress] An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
  /// [region] The URL of the region where the operation resides. Only applicable when performing regional operations.
  /// [selfLink] Server-defined URL for the resource.
  /// [setCommonInstanceMetadataOperationMetadata] If the operation is for projects.setCommonInstanceMetadata, this field will contain information on all underlying zonal actions and their state.
  /// [startTime] The time that this operation was started by the server. This value is in RFC3339 text format.
  /// [status] The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.
  /// [statusMessage] An optional textual description of the current status of the operation.
  /// [targetId] The unique target ID, which identifies a specific incarnation of the target resource.
  /// [targetLink] The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
  /// [user] User who requested the operation, for example: `user@example.com` or `alice_smith_identifier (global/workforcePools/example-com-us-employees)`.
  /// [warnings] If warning messages are generated during processing of the operation, this field will be populated.
  /// [zone] The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
  OperationResponse({
    required this.clientOperationId,
    required this.creationTimestamp,
    required this.description,
    required this.endTime,
    required this.error,
    required this.httpErrorMessage,
    required this.httpErrorStatusCode,
    required this.insertTime,
    required this.instancesBulkInsertOperationMetadata,
    required this.kind,
    required this.name,
    required this.operationGroupId,
    required this.operationType,
    required this.progress,
    required this.region,
    required this.selfLink,
    required this.setCommonInstanceMetadataOperationMetadata,
    required this.startTime,
    required this.status,
    required this.statusMessage,
    required this.targetId,
    required this.targetLink,
    required this.user,
    required this.warnings,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': clientOperationId,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'endTime': endTime,
      'error': error.toMap(),
      'httpErrorMessage': httpErrorMessage,
      'httpErrorStatusCode': httpErrorStatusCode,
      'insertTime': insertTime,
      'instancesBulkInsertOperationMetadata': instancesBulkInsertOperationMetadata.toMap(),
      'kind': kind,
      'name': name,
      'operationGroupId': operationGroupId,
      'operationType': operationType,
      'progress': progress,
      'region': region,
      'selfLink': selfLink,
      'setCommonInstanceMetadataOperationMetadata': setCommonInstanceMetadataOperationMetadata.toMap(),
      'startTime': startTime,
      'status': status,
      'statusMessage': statusMessage,
      'targetId': targetId,
      'targetLink': targetLink,
      'user': user,
      'warnings': pulumi.Input.encodeList<OperationWarningsItemResponse, Map<String, dynamic>>(warnings, (value) => value.toMap()),
      'zone': zone,
    };
  }

  factory OperationResponse.fromMap(Map<String, dynamic> map) {
    return OperationResponse(
      clientOperationId: map['clientOperationId'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      error: OperationErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      httpErrorMessage: map['httpErrorMessage'] as String,
      httpErrorStatusCode: map['httpErrorStatusCode'] as int,
      insertTime: map['insertTime'] as String,
      instancesBulkInsertOperationMetadata: InstancesBulkInsertOperationMetadataResponse.fromMap((map['instancesBulkInsertOperationMetadata'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      operationGroupId: map['operationGroupId'] as String,
      operationType: map['operationType'] as String,
      progress: map['progress'] as int,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      setCommonInstanceMetadataOperationMetadata: SetCommonInstanceMetadataOperationMetadataResponse.fromMap((map['setCommonInstanceMetadataOperationMetadata'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      targetId: map['targetId'] as String,
      targetLink: map['targetLink'] as String,
      user: map['user'] as String,
      warnings: pulumi.Input.decodeList<OperationWarningsItemResponse>(map['warnings'], (value) => OperationWarningsItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      zone: map['zone'] as String,
    );
  }
}

