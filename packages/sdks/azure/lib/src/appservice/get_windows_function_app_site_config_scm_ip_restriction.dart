// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_site_config_scm_ip_restriction_header.dart';

class GetWindowsFunctionAppSiteConfigScmIpRestriction {
  /// The action to take.
  final pulumi.Input<String> action;
  /// The description of the ip restriction rule.
  final pulumi.Input<String> description;
  final pulumi.Input<List<GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader>> headers;
  /// The CIDR notation of the IP or IP Range to match.
  final pulumi.Input<String> ipAddress;
  /// The name of this Windows Function App.
  final pulumi.Input<String> name;
  /// The priority value of this `ip_restriction`.
  final pulumi.Input<int> priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String> serviceTag;
  /// The subnet id which the Windows Function App is vNet Integrated with.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [GetWindowsFunctionAppSiteConfigScmIpRestriction].
  /// [action] The action to take.
  /// [description] The description of the ip restriction rule.
  /// [headers] Required.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match.
  /// [name] The name of this Windows Function App.
  /// [priority] The priority value of this `ip_restriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The subnet id which the Windows Function App is vNet Integrated with.
  GetWindowsFunctionAppSiteConfigScmIpRestriction({
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
      'headers': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetWindowsFunctionAppSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigScmIpRestriction(
      action: (map['action'] as String).input(),
      description: (map['description'] as String).input(),
      headers: (pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader>(map['headers'], (value) => GetWindowsFunctionAppSiteConfigScmIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      serviceTag: (map['serviceTag'] as String).input(),
      virtualNetworkSubnetId: (map['virtualNetworkSubnetId'] as String).input(),
    );
  }
}

