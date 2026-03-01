// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// A load balancing rule for a load balancer.
class LoadBalancingRuleResponse {
  /// A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.
  final SubResourceResponse? backendAddressPool;
  /// An array of references to pool of DIPs.
  final List<SubResourceResponse>? backendAddressPools;
  /// The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables "Any Port".
  final int? backendPort;
  /// Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.
  final bool? disableOutboundSnat;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final bool? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final bool? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// A reference to frontend IP addresses.
  final SubResourceResponse? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables "Any Port".
  final int frontendPort;
  /// Resource ID.
  final String? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final int? idleTimeoutInMinutes;
  /// The load distribution policy for this rule.
  final String? loadDistribution;
  /// The name of the resource that is unique within the set of load balancing rules used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The reference to the load balancer probe used by the load balancing rule.
  final SubResourceResponse? probe;
  /// The reference to the transport protocol used by the load balancing rule.
  final String protocol;
  /// The provisioning state of the load balancing rule resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [LoadBalancingRuleResponse].
  /// [backendAddressPool] A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [backendAddressPools] An array of references to pool of DIPs.
  /// [backendPort] The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables "Any Port".
  /// [disableOutboundSnat] Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables "Any Port".
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [loadDistribution] The load distribution policy for this rule.
  /// [name] The name of the resource that is unique within the set of load balancing rules used by the load balancer. This name can be used to access the resource.
  /// [probe] The reference to the load balancer probe used by the load balancing rule.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  /// [provisioningState] The provisioning state of the load balancing rule resource.
  /// [type] Type of the resource.
  LoadBalancingRuleResponse({
    this.backendAddressPool,
    this.backendAddressPools,
    this.backendPort,
    this.disableOutboundSnat,
    this.enableFloatingIP,
    this.enableTcpReset,
    required this.etag,
    this.frontendIPConfiguration,
    required this.frontendPort,
    this.id,
    this.idleTimeoutInMinutes,
    this.loadDistribution,
    this.name,
    this.probe,
    required this.protocol,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'backendPort': ?backendPort,
      'disableOutboundSnat': ?disableOutboundSnat,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfiguration': ?frontendIPConfiguration == null ? null : frontendIPConfiguration!.toMap(),
      'frontendPort': frontendPort,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'name': ?name,
      'probe': ?probe == null ? null : probe!.toMap(),
      'protocol': protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory LoadBalancingRuleResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancingRuleResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['backendAddressPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      disableOutboundSnat: map['disableOutboundSnat'] == null ? null : map['disableOutboundSnat'] as bool,
      enableFloatingIP: map['enableFloatingIP'] == null ? null : map['enableFloatingIP'] as bool,
      enableTcpReset: map['enableTcpReset'] == null ? null : map['enableTcpReset'] as bool,
      etag: map['etag'] as String,
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : SubResourceResponse.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>()),
      frontendPort: map['frontendPort'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : map['idleTimeoutInMinutes'] as int,
      loadDistribution: map['loadDistribution'] == null ? null : map['loadDistribution'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      probe: map['probe'] == null ? null : SubResourceResponse.fromMap((map['probe'] as Map).cast<String, dynamic>()),
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

