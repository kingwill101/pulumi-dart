// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_provisioning_step_status_response.dart';

/// Server endpoint provisioning status information
class ServerEndpointProvisioningStatusResponse {
  /// Server Endpoint provisioning status
  final pulumi.Input<String> provisioningStatus;
  /// Provisioning Step status information for each step in the provisioning process
  final pulumi.Input<List<ServerEndpointProvisioningStepStatusResponse>> provisioningStepStatuses;
  /// Server Endpoint provisioning type
  final pulumi.Input<String> provisioningType;

  /// Creates a new [ServerEndpointProvisioningStatusResponse].
  /// [provisioningStatus] Server Endpoint provisioning status
  /// [provisioningStepStatuses] Provisioning Step status information for each step in the provisioning process
  /// [provisioningType] Server Endpoint provisioning type
  const ServerEndpointProvisioningStatusResponse({
    required this.provisioningStatus,
    required this.provisioningStepStatuses,
    required this.provisioningType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningStatus': provisioningStatus,
      'provisioningStepStatuses': pulumi.Input.mapInputValue<List<ServerEndpointProvisioningStepStatusResponse>, List<Map<String, dynamic>>>(provisioningStepStatuses, (value) => pulumi.Input.encodeList<ServerEndpointProvisioningStepStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningType': provisioningType,
    };
  }

  factory ServerEndpointProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointProvisioningStatusResponse(
      provisioningStatus: pulumi.Input.fromValue(map['provisioningStatus'] as String),
      provisioningStepStatuses: pulumi.Input.fromValue(pulumi.Input.decodeList<ServerEndpointProvisioningStepStatusResponse>(map['provisioningStepStatuses']!, (value) => ServerEndpointProvisioningStepStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningType: pulumi.Input.fromValue(map['provisioningType'] as String),
    );
  }
}

