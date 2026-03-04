// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Outbound rule of the load balancer.
class OutboundRule {
  /// The number of outbound ports to be used for NAT.
  final pulumi.Input<int>? allocatedOutboundPorts;

  /// A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final pulumi.Input<SubResource> backendAddressPool;

  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;

  /// The Frontend IP addresses of the load balancer.
  final pulumi.Input<List<SubResource>> frontendIPConfigurations;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The timeout for the TCP idle connection.
  final pulumi.Input<int>? idleTimeoutInMinutes;

  /// The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The protocol for the outbound rule in load balancer.
  final pulumi.Input<String> protocol;

  /// Creates a new [OutboundRule].
  /// [allocatedOutboundPorts] The number of outbound ports to be used for NAT.
  /// [backendAddressPool] A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [frontendIPConfigurations] The Frontend IP addresses of the load balancer.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection.
  /// [name] The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The protocol for the outbound rule in load balancer.
  OutboundRule({
    this.allocatedOutboundPorts,
    required this.backendAddressPool,
    this.enableTcpReset,
    required this.frontendIPConfigurations,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': ?allocatedOutboundPorts,
      'backendAddressPool':
          pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(
            backendAddressPool,
            (value) => value.toMap(),
          ),
      'enableTcpReset': ?enableTcpReset,
      'frontendIPConfigurations':
          pulumi.Input.mapInputValue<
            List<SubResource>,
            List<Map<String, dynamic>>
          >(
            frontendIPConfigurations,
            (value) =>
                pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': protocol,
    };
  }

  factory OutboundRule.fromMap(Map<String, dynamic> map) {
    return OutboundRule(
      allocatedOutboundPorts: (() {
        final guardedValue = map['allocatedOutboundPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      backendAddressPool: pulumi.Input.fromValue(
        SubResource.fromMap(
          (map['backendAddressPool']! as Map).cast<String, dynamic>(),
        ),
      ),
      enableTcpReset: (() {
        final guardedValue = map['enableTcpReset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frontendIPConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResource>(
          map['frontendIPConfigurations']!,
          (value) =>
              SubResource.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      idleTimeoutInMinutes: (() {
        final guardedValue = map['idleTimeoutInMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
