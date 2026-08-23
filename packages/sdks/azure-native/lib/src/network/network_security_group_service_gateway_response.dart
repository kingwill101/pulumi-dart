// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_service_gateway_response.dart';
import 'network_interface_service_gateway_response.dart';
import 'security_rule_service_gateway_response.dart';
import 'subnet_response.dart';

/// NetworkSecurityGroup resource.
class NetworkSecurityGroupServiceGatewayResponse {
  /// The default security rules of network security group.
  final pulumi.Input<List<SecurityRuleServiceGatewayResponse>> defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// A collection of references to flow log resources.
  final pulumi.Input<List<FlowLogServiceGatewayResponse>> flowLogs;
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  final pulumi.Input<bool>? flushConnection;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// A collection of references to network interfaces.
  final pulumi.Input<List<NetworkInterfaceServiceGatewayResponse>> networkInterfaces;
  /// The provisioning state of the network security group resource.
  final pulumi.Input<String> provisioningState;
  /// The resource GUID property of the network security group resource.
  final pulumi.Input<String> resourceGuid;
  /// A collection of security rules of the network security group.
  final pulumi.Input<List<SecurityRuleServiceGatewayResponse>>? securityRules;
  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [NetworkSecurityGroupServiceGatewayResponse].
  /// [defaultSecurityRules] The default security rules of network security group.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [flowLogs] A collection of references to flow log resources.
  /// [flushConnection] When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] A collection of references to network interfaces.
  /// [provisioningState] The provisioning state of the network security group resource.
  /// [resourceGuid] The resource GUID property of the network security group resource.
  /// [securityRules] A collection of security rules of the network security group.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const NetworkSecurityGroupServiceGatewayResponse({
    required this.defaultSecurityRules,
    required this.etag,
    required this.flowLogs,
    this.flushConnection,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaces,
    required this.provisioningState,
    required this.resourceGuid,
    this.securityRules,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSecurityRules': pulumi.Input.mapInputValue<List<SecurityRuleServiceGatewayResponse>, List<Map<String, dynamic>>>(defaultSecurityRules, (value) => pulumi.Input.encodeList<SecurityRuleServiceGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'flowLogs': pulumi.Input.mapInputValue<List<FlowLogServiceGatewayResponse>, List<Map<String, dynamic>>>(flowLogs, (value) => pulumi.Input.encodeList<FlowLogServiceGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flushConnection': ?flushConnection,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceServiceGatewayResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceServiceGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityRuleServiceGatewayResponse>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<SecurityRuleServiceGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<SubnetResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
    };
  }

  factory NetworkSecurityGroupServiceGatewayResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupServiceGatewayResponse(
      defaultSecurityRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityRuleServiceGatewayResponse>(map['defaultSecurityRules']!, (value) => SecurityRuleServiceGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      flowLogs: pulumi.Input.fromValue(pulumi.Input.decodeList<FlowLogServiceGatewayResponse>(map['flowLogs']!, (value) => FlowLogServiceGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))),
      flushConnection: (() { final guardedValue = map['flushConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceServiceGatewayResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceServiceGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityRuleServiceGatewayResponse>(guardedValue, (value) => SecurityRuleServiceGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetResponse>(map['subnets']!, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
