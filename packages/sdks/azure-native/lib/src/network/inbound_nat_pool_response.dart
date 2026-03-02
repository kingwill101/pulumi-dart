// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Inbound NAT pool of the load balancer.
class InboundNatPoolResponse {
  /// The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  final pulumi.Input<int> backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final pulumi.Input<bool>? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// A reference to frontend IP addresses.
  final pulumi.Input<SubResourceResponse>? frontendIPConfiguration;
  /// The last port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65535.
  final pulumi.Input<int> frontendPortRangeEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65534.
  final pulumi.Input<int> frontendPortRangeStart;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The name of the resource that is unique within the set of inbound NAT pools used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The reference to the transport protocol used by the inbound NAT pool.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the inbound NAT pool resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [InboundNatPoolResponse].
  /// [backendPort] The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPortRangeEnd] The last port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65535.
  /// [frontendPortRangeStart] The first port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65534.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [name] The name of the resource that is unique within the set of inbound NAT pools used by the load balancer. This name can be used to access the resource.
  /// [protocol] The reference to the transport protocol used by the inbound NAT pool.
  /// [provisioningState] The provisioning state of the inbound NAT pool resource.
  /// [type] Type of the resource.
  InboundNatPoolResponse({
    required this.backendPort,
    this.enableFloatingIP,
    this.enableTcpReset,
    required this.etag,
    this.frontendIPConfiguration,
    required this.frontendPortRangeEnd,
    required this.frontendPortRangeStart,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    required this.protocol,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPortRangeEnd': frontendPortRangeEnd,
      'frontendPortRangeStart': frontendPortRangeStart,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory InboundNatPoolResponse.fromMap(Map<String, dynamic> map) {
    return InboundNatPoolResponse(
      backendPort: (map['backendPort'] as int).input(),
      enableFloatingIP: map['enableFloatingIP'] == null ? null : (map['enableFloatingIP'] as bool).input(),
      enableTcpReset: map['enableTcpReset'] == null ? null : (map['enableTcpReset'] as bool).input(),
      etag: (map['etag'] as String).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendPortRangeEnd: (map['frontendPortRangeEnd'] as int).input(),
      frontendPortRangeStart: (map['frontendPortRangeStart'] as int).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

