// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime_error_response.dart';

/// Properties of integration runtime node.
class ManagedIntegrationRuntimeNodeResponse {
  /// The errors that occurred on this integration runtime node.
  final List<ManagedIntegrationRuntimeErrorResponse>? errors;
  /// The managed integration runtime node id.
  final String nodeId;
  /// The managed integration runtime node status.
  final String status;

  /// Creates a new [ManagedIntegrationRuntimeNodeResponse].
  /// [errors] The errors that occurred on this integration runtime node.
  /// [nodeId] The managed integration runtime node id.
  /// [status] The managed integration runtime node status.
  ManagedIntegrationRuntimeNodeResponse({
    this.errors,
    required this.nodeId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ManagedIntegrationRuntimeErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'nodeId': nodeId,
      'status': status,
    };
  }

  factory ManagedIntegrationRuntimeNodeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeNodeResponse(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ManagedIntegrationRuntimeErrorResponse>(map['errors'], (value) => ManagedIntegrationRuntimeErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      nodeId: map['nodeId'] as String,
      status: map['status'] as String,
    );
  }
}

