// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_inbound_nat_rule_args_doc}
/// The set of arguments for InboundNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_inbound_nat_rule_args_doc}
class InboundNatRuleArgs {
  /// A reference to backendAddressPool resource.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  final pulumi.Input<int>? backendPort;
  /// Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  final pulumi.Input<bool>? enableFloatingIP;
  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;
  /// A reference to frontend IP addresses.
  final pulumi.Input<SubResource>? frontendIPConfiguration;
  /// The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  final pulumi.Input<int>? frontendPort;
  /// The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  final pulumi.Input<int>? frontendPortRangeEnd;
  /// The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  final pulumi.Input<int>? frontendPortRangeStart;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The name of the inbound NAT rule.
  final pulumi.Input<String>? inboundNatRuleName;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The reference to the transport protocol used by the load balancing rule.
  final pulumi.Input<String>? protocol;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [InboundNatRuleArgs].
  /// [backendAddressPool] A reference to backendAddressPool resource.
  /// [backendPort] The port used for the internal endpoint. Acceptable values range from 1 to 65535.
  /// [enableFloatingIP] Configures a virtual machine's endpoint for the floating IP capability required to configure a SQL AlwaysOn Availability Group. This setting is required when using the SQL AlwaysOn Availability Groups in SQL server. This setting can't be changed after you create the endpoint.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [frontendIPConfiguration] A reference to frontend IP addresses.
  /// [frontendPort] The port for the external endpoint. Port numbers for each rule must be unique within the Load Balancer. Acceptable values range from 1 to 65534.
  /// [frontendPortRangeEnd] The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  /// [frontendPortRangeStart] The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. The default value is 4 minutes. This element is only used when the protocol is set to TCP.
  /// [inboundNatRuleName] The name of the inbound NAT rule.
  /// [loadBalancerName] The name of the load balancer.
  /// [name] The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  /// [resourceGroupName] The name of the resource group.
  InboundNatRuleArgs({
    pulumi.Output<SubResource>? backendAddressPool,
    pulumi.Output<int>? backendPort,
    pulumi.Output<bool>? enableFloatingIP,
    pulumi.Output<bool>? enableTcpReset,
    pulumi.Output<SubResource>? frontendIPConfiguration,
    pulumi.Output<int>? frontendPort,
    pulumi.Output<int>? frontendPortRangeEnd,
    pulumi.Output<int>? frontendPortRangeStart,
    pulumi.Output<String>? id,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? inboundNatRuleName,
    required pulumi.Output<String> loadBalancerName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocol,
    required pulumi.Output<String> resourceGroupName,
  }) :
      backendAddressPool = pulumi.Input.asOptionalInput<SubResource>(backendAddressPool),
      backendPort = pulumi.Input.asOptionalInput<int>(backendPort),
      enableFloatingIP = pulumi.Input.asOptionalInput<bool>(enableFloatingIP),
      enableTcpReset = pulumi.Input.asOptionalInput<bool>(enableTcpReset),
      frontendIPConfiguration = pulumi.Input.asOptionalInput<SubResource>(frontendIPConfiguration),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      frontendPortRangeEnd = pulumi.Input.asOptionalInput<int>(frontendPortRangeEnd),
      frontendPortRangeStart = pulumi.Input.asOptionalInput<int>(frontendPortRangeStart),
      id = pulumi.Input.asOptionalInput<String>(id),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      inboundNatRuleName = pulumi.Input.asOptionalInput<String>(inboundNatRuleName),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      name = pulumi.Input.asOptionalInput<String>(name),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendPort': ?backendPort,
      'enableFloatingIP': ?enableFloatingIP,
      'enableTcpReset': ?enableTcpReset,
      'frontendIPConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(frontendIPConfiguration, (value) => value.toMap()),
      'frontendPort': ?frontendPort,
      'frontendPortRangeEnd': ?frontendPortRangeEnd,
      'frontendPortRangeStart': ?frontendPortRangeStart,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'inboundNatRuleName': ?inboundNatRuleName,
      'loadBalancerName': loadBalancerName,
      'name': ?name,
      'protocol': ?protocol,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory InboundNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return InboundNatRuleArgs(
      backendAddressPool: map['backendAddressPool'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())),
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<int>(map['backendPort'] as int),
      enableFloatingIP: map['enableFloatingIP'] == null ? null : pulumi.Output.create<bool>(map['enableFloatingIP'] as bool),
      enableTcpReset: map['enableTcpReset'] == null ? null : pulumi.Output.create<bool>(map['enableTcpReset'] as bool),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['frontendIPConfiguration'] as Map).cast<String, dynamic>())),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      frontendPortRangeEnd: map['frontendPortRangeEnd'] == null ? null : pulumi.Output.create<int>(map['frontendPortRangeEnd'] as int),
      frontendPortRangeStart: map['frontendPortRangeStart'] == null ? null : pulumi.Output.create<int>(map['frontendPortRangeStart'] as int),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      inboundNatRuleName: map['inboundNatRuleName'] == null ? null : pulumi.Output.create<String>(map['inboundNatRuleName'] as String),
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

