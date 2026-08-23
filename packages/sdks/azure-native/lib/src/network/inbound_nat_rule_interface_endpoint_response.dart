// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Inbound NAT rule of the load balancer.
class InboundNatRuleInterfaceEndpointResponse {
  /// A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP.
  final pulumi.Input<NetworkInterfaceIPConfigurationResponse> backendIPConfiguration;
  /// The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  final pulumi.Input<int>? backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final pulumi.Input<bool>? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// A reference to frontend IP addresses.
  final pulumi.Input<SubResourceResponse>? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  final pulumi.Input<int>? frontendPort;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// Gets name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The reference to the transport protocol used by the load balancing rule.
  final pulumi.Input<String>? protocol;
  /// Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [InboundNatRuleInterfaceEndpointResponse].
  /// [backendIPConfiguration] A reference to a private IP address defined on a network interface of a VM. Traffic sent to the frontend port of each of the frontend IP configurations is forwarded to the backend IP.
  /// [backendPort] The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [name] Gets name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  /// [provisioningState] Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  const InboundNatRuleInterfaceEndpointResponse({
    required this.backendIPConfiguration,
    this.backendPort,
    this.enableFloatingIP,
    this.enableTcpReset,
    this.etag,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    this.protocol,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfiguration': pulumi.Input.mapInputValue<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(backendIPConfiguration, (value) => value.toMap()),
      'backendPort': ?backendPort,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'etag': ?etag,
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?frontendPort,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': ?protocol,
      'provisioningState': ?provisioningState,
    };
  }

  factory InboundNatRuleInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return InboundNatRuleInterfaceEndpointResponse(
      backendIPConfiguration: pulumi.Input.fromValue(NetworkInterfaceIPConfigurationResponse.fromMap((map['backendIPConfiguration']! as Map).cast<String, dynamic>())),
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableFloatingIP: (() { final guardedValue = map['enableFloatingIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTcpReset: (() { final guardedValue = map['enableTcpReset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendIPConfiguration: (() { final guardedValue = map['frontendIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
