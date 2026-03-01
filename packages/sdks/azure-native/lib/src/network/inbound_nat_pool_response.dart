// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Inbound NAT pool of the load balancer.
class InboundNatPoolResponse {
  /// The port used for internal connections on the endpoint. Acceptable values are between 1 and 65535.
  final int backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final bool? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final bool? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A reference to frontend IP addresses.
  final SubResourceResponse? frontendIPConfiguration;
  /// The last port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65535.
  final int frontendPortRangeEnd;
  /// The first port number in the range of external ports that will be used to provide Inbound Nat to NICs associated with a load balancer. Acceptable values range between 1 and 65534.
  final int frontendPortRangeStart;
  /// Resource ID.
  final String? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final int? idleTimeoutInMinutes;
  /// The name of the resource that is unique within the set of inbound NAT pools used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The reference to the transport protocol used by the inbound NAT pool.
  final String protocol;
  /// The provisioning state of the inbound NAT pool resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

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
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
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
      backendPort: map['backendPort'] as int,
      enableFloatingIP: map['enableFloatingIP'] == null ? null : map['enableFloatingIP'] as bool,
      enableTcpReset: map['enableTcpReset'] == null ? null : map['enableTcpReset'] as bool,
      etag: map['etag'] as String,
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPortRangeEnd: map['frontendPortRangeEnd'] as int,
      frontendPortRangeStart: map['frontendPortRangeStart'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

