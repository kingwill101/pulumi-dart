// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instances_bulk_insert_operation_metadata_response_deploymentmanager_v2beta.dart';
import 'operation_error_response_deploymentmanager_v2beta.dart';
import 'operation_warnings_item_response_deploymentmanager_v2beta.dart';
import 'set_common_instance_metadata_operation_metadata_response_deploymentmanager_v2beta.dart';

/// Represents an Operation resource. Google Compute Engine has three Operation resources: * [Global](/compute/docs/reference/rest/{$api_version}/globalOperations) * [Regional](/compute/docs/reference/rest/{$api_version}/regionOperations) * [Zonal](/compute/docs/reference/rest/{$api_version}/zoneOperations) You can use an operation resource to manage asynchronous API requests. For more information, read Handling API responses. Operations can be global, regional or zonal. - For global operations, use the `globalOperations` resource. - For regional operations, use the `regionOperations` resource. - For zonal operations, use the `zoneOperations` resource. For more information, read Global, Regional, and Zonal Resources.
class OperationResponseDeploymentmanagerV2beta {
  /// The value of `requestId` if you provided it in the request. Not present otherwise.
  final pulumi.Input<String> clientOperationId;
  /// [Deprecated] This field is deprecated.
  final pulumi.Input<String> creationTimestamp;
  /// A textual description of the operation, which is set when the operation is created.
  final pulumi.Input<String> description;
  /// The time that this operation was completed. This value is in RFC3339 text format.
  final pulumi.Input<String> endTime;
  /// If errors are generated during processing of the operation, this field will be populated.
  final pulumi.Input<OperationErrorResponseDeploymentmanagerV2beta> error;
  /// If the operation fails, this field contains the HTTP error message that was returned, such as `NOT FOUND`.
  final pulumi.Input<String> httpErrorMessage;
  /// If the operation fails, this field contains the HTTP error status code that was returned. For example, a `404` means the resource was not found.
  final pulumi.Input<int> httpErrorStatusCode;
  /// The time that this operation was requested. This value is in RFC3339 text format.
  final pulumi.Input<String> insertTime;
  final pulumi.Input<InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta> instancesBulkInsertOperationMetadata;
  /// Type of the resource. Always `compute#operation` for Operation resources.
  final pulumi.Input<String> kind;
  /// Name of the operation.
  final pulumi.Input<String> name;
  /// An ID that represents a group of operations, such as when a group of operations results from a `bulkInsert` API request.
  final pulumi.Input<String> operationGroupId;
  /// The type of operation, such as `insert`, `update`, or `delete`, and so on.
  final pulumi.Input<String> operationType;
  /// An optional progress indicator that ranges from 0 to 100. There is no requirement that this be linear or support any granularity of operations. This should not be used to guess when the operation will be complete. This number should monotonically increase as the operation progresses.
  final pulumi.Input<int> progress;
  /// The URL of the region where the operation resides. Only applicable when performing regional operations.
  final pulumi.Input<String> region;
  /// Server-defined URL for the resource.
  final pulumi.Input<String> selfLink;
  /// If the operation is for projects.setCommonInstanceMetadata, this field will contain information on all underlying zonal actions and their state.
  final pulumi.Input<SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta> setCommonInstanceMetadataOperationMetadata;
  /// The time that this operation was started by the server. This value is in RFC3339 text format.
  final pulumi.Input<String> startTime;
  /// The status of the operation, which can be one of the following: `PENDING`, `RUNNING`, or `DONE`.
  final pulumi.Input<String> status;
  /// An optional textual description of the current status of the operation.
  final pulumi.Input<String> statusMessage;
  /// The unique target ID, which identifies a specific incarnation of the target resource.
  final pulumi.Input<String> targetId;
  /// The URL of the resource that the operation modifies. For operations related to creating a snapshot, this points to the persistent disk that the snapshot was created from.
  final pulumi.Input<String> targetLink;
  /// User who requested the operation, for example: `user@example.com` or `alice_smith_identifier (global/workforcePools/example-com-us-employees)`.
  final pulumi.Input<String> user;
  /// If warning messages are generated during processing of the operation, this field will be populated.
  final pulumi.Input<List<OperationWarningsItemResponseDeploymentmanagerV2beta>> warnings;
  /// The URL of the zone where the operation resides. Only applicable when performing per-zone operations.
  final pulumi.Input<String> zone;

  /// Creates a new [OperationResponseDeploymentmanagerV2beta].
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
  const OperationResponseDeploymentmanagerV2beta({
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
      'error': pulumi.Input.mapInputValue<OperationErrorResponseDeploymentmanagerV2beta, Map<String, dynamic>>(error, (value) => value.toMap()),
      'httpErrorMessage': httpErrorMessage,
      'httpErrorStatusCode': httpErrorStatusCode,
      'insertTime': insertTime,
      'instancesBulkInsertOperationMetadata': pulumi.Input.mapInputValue<InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta, Map<String, dynamic>>(instancesBulkInsertOperationMetadata, (value) => value.toMap()),
      'kind': kind,
      'name': name,
      'operationGroupId': operationGroupId,
      'operationType': operationType,
      'progress': progress,
      'region': region,
      'selfLink': selfLink,
      'setCommonInstanceMetadataOperationMetadata': pulumi.Input.mapInputValue<SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta, Map<String, dynamic>>(setCommonInstanceMetadataOperationMetadata, (value) => value.toMap()),
      'startTime': startTime,
      'status': status,
      'statusMessage': statusMessage,
      'targetId': targetId,
      'targetLink': targetLink,
      'user': user,
      'warnings': pulumi.Input.mapInputValue<List<OperationWarningsItemResponseDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<OperationWarningsItemResponseDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': zone,
    };
  }

  factory OperationResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return OperationResponseDeploymentmanagerV2beta(
      clientOperationId: pulumi.Input.fromValue(map['clientOperationId'] as String),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: pulumi.Input.fromValue(OperationErrorResponseDeploymentmanagerV2beta.fromMap((map['error']! as Map).cast<String, dynamic>())),
      httpErrorMessage: pulumi.Input.fromValue(map['httpErrorMessage'] as String),
      httpErrorStatusCode: pulumi.Input.fromValue(map['httpErrorStatusCode'] as int),
      insertTime: pulumi.Input.fromValue(map['insertTime'] as String),
      instancesBulkInsertOperationMetadata: pulumi.Input.fromValue(InstancesBulkInsertOperationMetadataResponseDeploymentmanagerV2beta.fromMap((map['instancesBulkInsertOperationMetadata']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      operationGroupId: pulumi.Input.fromValue(map['operationGroupId'] as String),
      operationType: pulumi.Input.fromValue(map['operationType'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as int),
      region: pulumi.Input.fromValue(map['region'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      setCommonInstanceMetadataOperationMetadata: pulumi.Input.fromValue(SetCommonInstanceMetadataOperationMetadataResponseDeploymentmanagerV2beta.fromMap((map['setCommonInstanceMetadataOperationMetadata']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetLink: pulumi.Input.fromValue(map['targetLink'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
      warnings: pulumi.Input.fromValue(pulumi.Input.decodeList<OperationWarningsItemResponseDeploymentmanagerV2beta>(map['warnings']!, (value) => OperationWarningsItemResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
