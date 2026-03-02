// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_error_info_response.dart';
import 'google_rpc_status_response.dart';

/// Information about a specific Private Service Connect connection.
class PscConnectionResponse {
  /// The resource reference of the consumer address.
  final pulumi.Input<String> consumerAddress;
  /// The resource reference of the PSC Forwarding Rule within the consumer VPC.
  final pulumi.Input<String> consumerForwardingRule;
  /// The project where the PSC connection is created.
  final pulumi.Input<String> consumerTargetProject;
  /// The most recent error during operating this connection.
  final pulumi.Input<GoogleRpcStatusResponse> error;
  /// The error info for the latest error during operating this connection.
  final pulumi.Input<GoogleRpcErrorInfoResponse> errorInfo;
  /// The error type indicates whether the error is consumer facing, producer facing or system internal.
  final pulumi.Input<String> errorType;
  /// The last Compute Engine operation to setup PSC connection.
  final pulumi.Input<String> gceOperation;
  /// The PSC connection id of the PSC forwarding rule.
  final pulumi.Input<String> pscConnectionId;
  /// State of the PSC Connection
  final pulumi.Input<String> state;

  /// Creates a new [PscConnectionResponse].
  /// [consumerAddress] The resource reference of the consumer address.
  /// [consumerForwardingRule] The resource reference of the PSC Forwarding Rule within the consumer VPC.
  /// [consumerTargetProject] The project where the PSC connection is created.
  /// [error] The most recent error during operating this connection.
  /// [errorInfo] The error info for the latest error during operating this connection.
  /// [errorType] The error type indicates whether the error is consumer facing, producer facing or system internal.
  /// [gceOperation] The last Compute Engine operation to setup PSC connection.
  /// [pscConnectionId] The PSC connection id of the PSC forwarding rule.
  /// [state] State of the PSC Connection
  PscConnectionResponse({
    required this.consumerAddress,
    required this.consumerForwardingRule,
    required this.consumerTargetProject,
    required this.error,
    required this.errorInfo,
    required this.errorType,
    required this.gceOperation,
    required this.pscConnectionId,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerAddress': consumerAddress,
      'consumerForwardingRule': consumerForwardingRule,
      'consumerTargetProject': consumerTargetProject,
      'error': pulumi.Input.mapInputValue<GoogleRpcStatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'errorInfo': pulumi.Input.mapInputValue<GoogleRpcErrorInfoResponse, Map<String, dynamic>>(errorInfo, (value) => value.toMap()),
      'errorType': errorType,
      'gceOperation': gceOperation,
      'pscConnectionId': pscConnectionId,
      'state': state,
    };
  }

  factory PscConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PscConnectionResponse(
      consumerAddress: (map['consumerAddress'] as String).input(),
      consumerForwardingRule: (map['consumerForwardingRule'] as String).input(),
      consumerTargetProject: (map['consumerTargetProject'] as String).input(),
      error: (GoogleRpcStatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      errorInfo: (GoogleRpcErrorInfoResponse.fromMap((map['errorInfo'] as Map).cast<String, dynamic>())).input(),
      errorType: (map['errorType'] as String).input(),
      gceOperation: (map['gceOperation'] as String).input(),
      pscConnectionId: (map['pscConnectionId'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

