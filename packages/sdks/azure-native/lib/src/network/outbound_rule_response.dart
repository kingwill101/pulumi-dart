// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Outbound rule of the load balancer.
class OutboundRuleResponse {
  /// The number of outbound ports to be used for NAT.
  final pulumi.Input<int>? allocatedOutboundPorts;

  /// A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  final pulumi.Input<SubResourceResponse> backendAddressPool;

  /// Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  final pulumi.Input<bool>? enableTcpReset;

  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// The Frontend IP addresses of the load balancer.
  final pulumi.Input<List<SubResourceResponse>> frontendIPConfigurations;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The timeout for the TCP idle connection.
  final pulumi.Input<int>? idleTimeoutInMinutes;

  /// The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// The protocol for the outbound rule in load balancer.
  final pulumi.Input<String> protocol;

  /// The provisioning state of the outbound rule resource.
  final pulumi.Input<String> provisioningState;

  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [OutboundRuleResponse].
  /// [allocatedOutboundPorts] The number of outbound ports to be used for NAT.
  /// [backendAddressPool] A reference to a pool of DIPs. Outbound traffic is randomly load balanced across IPs in the backend IPs.
  /// [enableTcpReset] Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [frontendIPConfigurations] The Frontend IP addresses of the load balancer.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The timeout for the TCP idle connection.
  /// [name] The name of the resource that is unique within the set of outbound rules used by the load balancer. This name can be used to access the resource.
  /// [protocol] The protocol for the outbound rule in load balancer.
  /// [provisioningState] The provisioning state of the outbound rule resource.
  /// [type] Type of the resource.
  OutboundRuleResponse({
    this.allocatedOutboundPorts,
    required this.backendAddressPool,
    this.enableTcpReset,
    required this.etag,
    required this.frontendIPConfigurations,
    this.id,
    this.idleTimeoutInMinutes,
    this.name,
    required this.protocol,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedOutboundPorts': ?allocatedOutboundPorts,
      'backendAddressPool':
          pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(
            backendAddressPool,
            (value) => value.toMap(),
          ),
      'enableTcpReset': ?enableTcpReset,
      'etag': etag,
      'frontendIPConfigurations':
          pulumi.Input.mapInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            frontendIPConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'name': ?name,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory OutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return OutboundRuleResponse(
      allocatedOutboundPorts: (() {
        final guardedValue = map['allocatedOutboundPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      backendAddressPool: pulumi.Input.fromValue(
        SubResourceResponse.fromMap(
          (map['backendAddressPool']! as Map).cast<String, dynamic>(),
        ),
      ),
      enableTcpReset: (() {
        final guardedValue = map['enableTcpReset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      frontendIPConfigurations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResourceResponse>(
          map['frontendIPConfigurations']!,
          (value) => SubResourceResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
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
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
