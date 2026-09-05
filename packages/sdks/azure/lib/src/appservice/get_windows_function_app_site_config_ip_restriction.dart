// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_site_config_ip_restriction_header.dart';

class GetWindowsFunctionAppSiteConfigIpRestriction {
  /// The action to take.
  final pulumi.Input<String> action;
  /// The description of the ip restriction rule.
  final pulumi.Input<String> description;
  final pulumi.Input<List<GetWindowsFunctionAppSiteConfigIpRestrictionHeader>> headers;
  /// The CIDR notation of the IP or IP Range to match.
  final pulumi.Input<String> ipAddress;
  /// The name of this Windows Function App.
  final pulumi.Input<String> name;
  /// The priority value of this `ipRestriction`.
  final pulumi.Input<int> priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String> serviceTag;
  /// The subnet id which the Windows Function App is vNet Integrated with.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [GetWindowsFunctionAppSiteConfigIpRestriction].
  /// [action] The action to take.
  /// [description] The description of the ip restriction rule.
  /// [headers] Required.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match.
  /// [name] The name of this Windows Function App.
  /// [priority] The priority value of this `ipRestriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The subnet id which the Windows Function App is vNet Integrated with.
  const GetWindowsFunctionAppSiteConfigIpRestriction({
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
      'headers': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppSiteConfigIpRestrictionHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigIpRestrictionHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetWindowsFunctionAppSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigIpRestriction(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigIpRestrictionHeader>(map['headers']!, (value) => GetWindowsFunctionAppSiteConfigIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>()))),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      serviceTag: pulumi.Input.fromValue(map['serviceTag'] as String),
      virtualNetworkSubnetId: pulumi.Input.fromValue(map['virtualNetworkSubnetId'] as String),
    );
  }
}
