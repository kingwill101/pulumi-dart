// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_response.dart';
import 'security_rule_interface_endpoint_response.dart';
import 'subnet_response.dart';

/// NetworkSecurityGroup resource.
class NetworkSecurityGroupInterfaceEndpointResponse {
  /// The default security rules of network security group.
  final pulumi.Input<List<SecurityRuleInterfaceEndpointResponse>?>? defaultSecurityRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// A collection of references to network interfaces.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;
  /// The resource GUID property of the network security group resource.
  final pulumi.Input<String?>? resourceGuid;
  /// A collection of security rules of the network security group.
  final pulumi.Input<List<SecurityRuleInterfaceEndpointResponse>?>? securityRules;
  /// A collection of references to subnets.
  final pulumi.Input<List<SubnetResponse>> subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [NetworkSecurityGroupInterfaceEndpointResponse].
  /// [defaultSecurityRules] The default security rules of network security group.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaces] A collection of references to network interfaces.
  /// [provisioningState] The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [resourceGuid] The resource GUID property of the network security group resource.
  /// [securityRules] A collection of security rules of the network security group.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const NetworkSecurityGroupInterfaceEndpointResponse({
    this.defaultSecurityRules,
    this.etag,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaces,
    this.provisioningState,
    this.resourceGuid,
    this.securityRules,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultSecurityRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityRuleInterfaceEndpointResponse>, List<Map<String, dynamic>>>(defaultSecurityRules, (value) => pulumi.Input.encodeList<SecurityRuleInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<SecurityRuleInterfaceEndpointResponse>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<SecurityRuleInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnets': pulumi.Input.mapInputValue<List<SubnetResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
    };
  }

  factory NetworkSecurityGroupInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupInterfaceEndpointResponse(
      defaultSecurityRules: (() { final guardedValue = map['defaultSecurityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityRuleInterfaceEndpointResponse>(guardedValue, (value) => SecurityRuleInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces']!, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityRuleInterfaceEndpointResponse>(guardedValue, (value) => SecurityRuleInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnets: pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetResponse>(map['subnets']!, (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
