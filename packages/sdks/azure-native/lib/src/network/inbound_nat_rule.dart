// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Inbound NAT rule of the load balancer.
class InboundNatRule {
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
  /// The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The reference to the transport protocol used by the load balancing rule.
  final pulumi.Input<String>? protocol;

  /// Creates a new [InboundNatRule].
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
  /// [name] The name of the resource that is unique within the set of inbound NAT rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The reference to the transport protocol used by the load balancing rule.
  InboundNatRule({
    this.backendAddressPool,
    this.backendPort,
    this.enableFloatingIP,
    this.enableTcpReset,
    this.frontendIPConfiguration,
    this.frontendPort,
    this.frontendPortRangeEnd,
    this.frontendPortRangeStart,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    this.protocol,
  });

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
      'name': ?name,
      'protocol': ?protocol,
    };
  }

  factory InboundNatRule.fromMap(Map<String, dynamic> map) {
    return InboundNatRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResource.fromMap((map['backendAddressPool']! as Map).cast<String, dynamic>())).input(),
      backendPort: map['backendPort'] == null ? null : (map['backendPort']! as int).input(),
      enableFloatingIP: map['enableFloatingIP'] == null ? null : (map['enableFloatingIP']! as bool).input(),
      enableTcpReset: map['enableTcpReset'] == null ? null : (map['enableTcpReset']! as bool).input(),
      frontendIPConfiguration: map['frontendIPConfiguration'] == null ? null : (SubResource.fromMap((map['frontendIPConfiguration']! as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort']! as int).input(),
      frontendPortRangeEnd: map['frontendPortRangeEnd'] == null ? null : (map['frontendPortRangeEnd']! as int).input(),
      frontendPortRangeStart: map['frontendPortRangeStart'] == null ? null : (map['frontendPortRangeStart']! as int).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

