// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_response.dart';
import 'network_interface_response.dart';
import 'security_rule_response.dart';
import 'subnet_response.dart';

/// Result data returned by getNetworkSecurityGroup.
class GetNetworkSecurityGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The default security rules of network security group.
  final List<SecurityRuleResponse>? defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// A collection of references to flow log resources.
  final List<FlowLogResponse>? flowLogs;
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  final bool? flushConnection;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// A collection of references to network interfaces.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// The provisioning state of the network security group resource.
  final String? provisioningState;
  /// The resource GUID property of the network security group resource.
  final String? resourceGuid;
  /// A collection of security rules of the network security group.
  final List<SecurityRuleResponse>? securityRules;
  /// A collection of references to subnets.
  final List<SubnetResponse>? subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkSecurityGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetNetworkSecurityGroupResult({
    this.azureApiVersion,
    this.defaultSecurityRules,
    this.etag,
    this.flowLogs,
    this.flushConnection,
    this.id,
    this.location,
    this.name,
    this.networkInterfaces,
    this.provisioningState,
    this.resourceGuid,
    this.securityRules,
    this.subnets,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'defaultSecurityRules': ?(() { final guardedValue = defaultSecurityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecurityRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'flowLogs': ?(() { final guardedValue = flowLogs; if (guardedValue == null) return null; return pulumi.Input.encodeList<FlowLogResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'flushConnection': ?flushConnection,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'securityRules': ?(() { final guardedValue = securityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecurityRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecurityRules: (() { final guardedValue = map['defaultSecurityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityRuleResponse>(guardedValue, (value) => SecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      flowLogs: (() { final guardedValue = map['flowLogs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FlowLogResponse>(guardedValue, (value) => FlowLogResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      flushConnection: (() { final guardedValue = map['flushConnection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceResponse>(guardedValue, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityRuleResponse>(guardedValue, (value) => SecurityRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubnetResponse>(guardedValue, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
