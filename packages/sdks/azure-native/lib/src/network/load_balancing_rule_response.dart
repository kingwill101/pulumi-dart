// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// A load balancing rule for a load balancer.
class LoadBalancingRuleResponse {
  /// A reference to a pool of DIPs. Inbound traffic is randomly load balanced across IPs in the backend IPs.
  final pulumi.Input<SubResourceResponse>? backendAddressPool;
  /// An array of references to pool of DIPs.
  final pulumi.Input<List<SubResourceResponse>>? backendAddressPools;
  /// The port used for internal connections on the endpoint. Acceptable values are between 0 and 65535. Note that value 0 enables "Any Port".
  final pulumi.Input<int>? backendPort;
  /// Configures SNAT for the VMs in the backend pool to use the publicIP address specified in the frontend of the load balancing rule.
  final pulumi.Input<bool>? disableOutboundSnat;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final pulumi.Input<bool>? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// A reference to frontend IP addresses.
  final pulumi.Input<SubResourceResponse>? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values are between 0 and 65534. Note that value 0 enables "Any Port".
  final pulumi.Input<int> frontendPort;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The load distribution policy for this rule.
  final pulumi.Input<String>? loadDistribution;
  /// The name of the resource that is unique within the set of load balancing rules used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The reference to the load balancer probe used by the load balancing rule.
  final pulumi.Input<SubResourceResponse>? probe;
  /// The reference to the transport protocol used by the load balancing rule.
  final pulumi.Input<String> protocol;
  /// The provisioning state of the load balancing rule resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPort': ?backendPort,
      'disableOutboundSnat': ?disableOutboundSnat,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': frontendPort,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'loadDistribution': ?loadDistribution,
      'name': ?name,
      'probe': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(probe, (value) => value.toMap()),
      'protocol': protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory LoadBalancingRuleResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancingRuleResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResourceResponse.fromMap((map['backendAddressPool']! as Map).cast<String, dynamic>())).input(),
      backendAddressPools: map['backendAddressPools'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['backendAddressPools']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendPort: map['backendPort'] == null ? null : (map['backendPort']! as int).input(),
      disableOutboundSnat: map['disableOutboundSnat'] == null ? null : (map['disableOutboundSnat']! as bool).input(),
      enableFloatingIP: map['enableFloatingIP'] == null ? null : (map['enableFloatingIP']! as bool).input(),
      enableTcpReset: map['enableTcpReset'] == null ? null : (map['enableTcpReset']! as bool).input(),
      etag: (map['etag'] as String).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['frontendIPConfiguration']! as Map).cast<String, dynamic>())).input(),
      frontendPort: (map['frontendPort'] as int).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      loadDistribution: map['loadDistribution'] == null ? null : (map['loadDistribution']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      probe: map['probe'] == null ? null : (SubResourceResponse.fromMap((map['probe']! as Map).cast<String, dynamic>())).input(),
      protocol: (map['protocol'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

