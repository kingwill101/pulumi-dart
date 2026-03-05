// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime_error_response.dart';

/// Properties of integration runtime node.
class ManagedIntegrationRuntimeNodeResponse {
  /// The errors that occurred on this integration runtime node.
  final pulumi.Input<List<ManagedIntegrationRuntimeErrorResponse>>? errors;
  /// The managed integration runtime node id.
  final pulumi.Input<String> nodeId;
  /// The managed integration runtime node status.
  final pulumi.Input<String> status;

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
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ManagedIntegrationRuntimeErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ManagedIntegrationRuntimeErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeId': nodeId,
      'status': status,
    };
  }

  factory ManagedIntegrationRuntimeNodeResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeNodeResponse(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedIntegrationRuntimeErrorResponse>(guardedValue, (value) => ManagedIntegrationRuntimeErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

