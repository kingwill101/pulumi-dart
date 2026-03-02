// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_site_config_scm_ip_restriction_header.dart';

class GetLinuxFunctionAppSiteConfigScmIpRestriction {
  /// The action taken.
  final pulumi.Input<String> action;
  /// The description of the ip restriction rule.
  final pulumi.Input<String> description;
  /// A `headers` block as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader>> headers;
  /// The CIDR notation of the IP or IP Range matched.
  final pulumi.Input<String> ipAddress;
  /// The name which should be used for this Linux Function App.
  final pulumi.Input<String> name;
  /// The priority value of this `ip_restriction`.
  final pulumi.Input<int> priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String> serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [GetLinuxFunctionAppSiteConfigScmIpRestriction].
  /// [action] The action taken.
  /// [description] The description of the ip restriction rule.
  /// [headers] A `headers` block as defined above.
  /// [ipAddress] The CIDR notation of the IP or IP Range matched.
  /// [name] The name which should be used for this Linux Function App.
  /// [priority] The priority value of this `ip_restriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  GetLinuxFunctionAppSiteConfigScmIpRestriction({
    required this.action,
    required this.description,
    required this.headers,
    required this.ipAddress,
    required this.name,
    required this.priority,
    required this.serviceTag,
    required this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'headers': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetLinuxFunctionAppSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigScmIpRestriction(
      action: (map['action'] as String).input(),
      description: (map['description'] as String).input(),
      headers: (pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader>(map['headers'], (value) => GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      serviceTag: (map['serviceTag'] as String).input(),
      virtualNetworkSubnetId: (map['virtualNetworkSubnetId'] as String).input(),
    );
  }
}

