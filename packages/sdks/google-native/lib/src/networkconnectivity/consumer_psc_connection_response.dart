// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_error_info_response.dart';
import 'google_rpc_status_response.dart';

/// PSC connection details on consumer side.
class ConsumerPscConnectionResponse {
  /// The most recent error during operating this connection.
  final pulumi.Input<GoogleRpcStatusResponse> error;
  /// The error info for the latest error during operating this connection.
  final pulumi.Input<GoogleRpcErrorInfoResponse> errorInfo;
  /// The error type indicates whether the error is consumer facing, producer facing or system internal.
  final pulumi.Input<String> errorType;
  /// The URI of the consumer forwarding rule created. Example: projects/{projectNumOrId}/regions/us-east1/networks/{resourceId}.
  final pulumi.Input<String> forwardingRule;
  /// The last Compute Engine operation to setup PSC connection.
  final pulumi.Input<String> gceOperation;
  /// The IP literal allocated on the consumer network for the PSC forwarding rule that is created to connect to the producer service attachment in this service connection map.
  final pulumi.Input<String> ip;
  /// The consumer network whose PSC forwarding rule is connected to the service attachments in this service connection map. Note that the network could be on a different project (shared VPC).
  final pulumi.Input<String> network;
  /// The consumer project whose PSC forwarding rule is connected to the service attachments in this service connection map.
  final pulumi.Input<String> project;
  /// The PSC connection id of the PSC forwarding rule connected to the service attachments in this service connection map.
  final pulumi.Input<String> pscConnectionId;
  /// The URI of a service attachment which is the target of the PSC connection.
  final pulumi.Input<String> serviceAttachmentUri;
  /// The state of the PSC connection.
  final pulumi.Input<String> state;

  /// Creates a new [ConsumerPscConnectionResponse].
  /// [error] The most recent error during operating this connection.
  /// [errorInfo] The error info for the latest error during operating this connection.
  /// [errorType] The error type indicates whether the error is consumer facing, producer facing or system internal.
  /// [forwardingRule] The URI of the consumer forwarding rule created. Example: projects/{projectNumOrId}/regions/us-east1/networks/{resourceId}.
  /// [gceOperation] The last Compute Engine operation to setup PSC connection.
  /// [ip] The IP literal allocated on the consumer network for the PSC forwarding rule that is created to connect to the producer service attachment in this service connection map.
  /// [network] The consumer network whose PSC forwarding rule is connected to the service attachments in this service connection map. Note that the network could be on a different project (shared VPC).
  /// [project] The consumer project whose PSC forwarding rule is connected to the service attachments in this service connection map.
  /// [pscConnectionId] The PSC connection id of the PSC forwarding rule connected to the service attachments in this service connection map.
  /// [serviceAttachmentUri] The URI of a service attachment which is the target of the PSC connection.
  /// [state] The state of the PSC connection.
  const ConsumerPscConnectionResponse({
    required this.error,
    required this.errorInfo,
    required this.errorType,
    required this.forwardingRule,
    required this.gceOperation,
    required this.ip,
    required this.network,
    required this.project,
    required this.pscConnectionId,
    required this.serviceAttachmentUri,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<GoogleRpcStatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'errorInfo': pulumi.Input.mapInputValue<GoogleRpcErrorInfoResponse, Map<String, dynamic>>(errorInfo, (value) => value.toMap()),
      'errorType': errorType,
      'forwardingRule': forwardingRule,
      'gceOperation': gceOperation,
      'ip': ip,
      'network': network,
      'project': project,
      'pscConnectionId': pscConnectionId,
      'serviceAttachmentUri': serviceAttachmentUri,
      'state': state,
    };
  }

  factory ConsumerPscConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConnectionResponse(
      error: pulumi.Input.fromValue(GoogleRpcStatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      errorInfo: pulumi.Input.fromValue(GoogleRpcErrorInfoResponse.fromMap((map['errorInfo']! as Map).cast<String, dynamic>())),
      errorType: pulumi.Input.fromValue(map['errorType'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      gceOperation: pulumi.Input.fromValue(map['gceOperation'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      pscConnectionId: pulumi.Input.fromValue(map['pscConnectionId'] as String),
      serviceAttachmentUri: pulumi.Input.fromValue(map['serviceAttachmentUri'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
