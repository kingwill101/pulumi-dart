// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime_error_response.dart';
import 'managed_integration_runtime_node_response.dart';
import 'managed_integration_runtime_operation_result_response.dart';

/// Managed integration runtime status.
class ManagedIntegrationRuntimeStatusResponse {
  /// The time at which the integration runtime was created, in ISO8601 format.
  final pulumi.Input<String> createTime;
  /// The workspace name which the integration runtime belong to.
  final pulumi.Input<String> dataFactoryName;
  /// The last operation result that occurred on this integration runtime.
  final pulumi.Input<ManagedIntegrationRuntimeOperationResultResponse> lastOperation;
  /// The list of nodes for managed integration runtime.
  final pulumi.Input<List<ManagedIntegrationRuntimeNodeResponse>> nodes;
  /// The errors that occurred on this integration runtime.
  final pulumi.Input<List<ManagedIntegrationRuntimeErrorResponse>> otherErrors;
  /// The state of integration runtime.
  final pulumi.Input<String> state;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIntegrationRuntimeStatusResponse].
  /// [createTime] The time at which the integration runtime was created, in ISO8601 format.
  /// [dataFactoryName] The workspace name which the integration runtime belong to.
  /// [lastOperation] The last operation result that occurred on this integration runtime.
  /// [nodes] The list of nodes for managed integration runtime.
  /// [otherErrors] The errors that occurred on this integration runtime.
  /// [state] The state of integration runtime.
  /// [type] The type of integration runtime.
  const ManagedIntegrationRuntimeStatusResponse({
    required this.createTime,
    required this.dataFactoryName,
    required this.lastOperation,
    required this.nodes,
    required this.otherErrors,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataFactoryName': dataFactoryName,
      'lastOperation': pulumi.Input.mapInputValue<ManagedIntegrationRuntimeOperationResultResponse, Map<String, dynamic>>(lastOperation, (value) => value.toMap()),
      'nodes': pulumi.Input.mapInputValue<List<ManagedIntegrationRuntimeNodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ManagedIntegrationRuntimeNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'otherErrors': pulumi.Input.mapInputValue<List<ManagedIntegrationRuntimeErrorResponse>, List<Map<String, dynamic>>>(otherErrors, (value) => pulumi.Input.encodeList<ManagedIntegrationRuntimeErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeStatusResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataFactoryName: pulumi.Input.fromValue(map['dataFactoryName'] as String),
      lastOperation: pulumi.Input.fromValue(ManagedIntegrationRuntimeOperationResultResponse.fromMap((map['lastOperation']! as Map).cast<String, dynamic>())),
      nodes: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedIntegrationRuntimeNodeResponse>(map['nodes']!, (value) => ManagedIntegrationRuntimeNodeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      otherErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedIntegrationRuntimeErrorResponse>(map['otherErrors']!, (value) => ManagedIntegrationRuntimeErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

