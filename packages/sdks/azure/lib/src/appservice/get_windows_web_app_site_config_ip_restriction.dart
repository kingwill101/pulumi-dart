// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_ip_restriction_header.dart';

class GetWindowsWebAppSiteConfigIpRestriction {
  /// A `action` block as defined above.
  final pulumi.Input<String> action;
  /// The description of the ip restriction rule.
  final pulumi.Input<String> description;
  final pulumi.Input<List<GetWindowsWebAppSiteConfigIpRestrictionHeader>> headers;
  /// The CIDR notation of the IP or IP Range to match.
  final pulumi.Input<String> ipAddress;
  /// The name of this Windows Web App.
  final pulumi.Input<String> name;
  /// The priority value of this `ip_restriction`.
  final pulumi.Input<int> priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String> serviceTag;
  /// The subnet id which the Windows Web App is vNet Integrated with.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [GetWindowsWebAppSiteConfigIpRestriction].
  /// [action] A `action` block as defined above.
  /// [description] The description of the ip restriction rule.
  /// [headers] Required.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match.
  /// [name] The name of this Windows Web App.
  /// [priority] The priority value of this `ip_restriction`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The subnet id which the Windows Web App is vNet Integrated with.
  const GetWindowsWebAppSiteConfigIpRestriction({
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
      'headers': pulumi.Input.mapInputValue<List<GetWindowsWebAppSiteConfigIpRestrictionHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetWindowsWebAppSiteConfigIpRestrictionHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetWindowsWebAppSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigIpRestriction(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppSiteConfigIpRestrictionHeader>(map['headers']!, (value) => GetWindowsWebAppSiteConfigIpRestrictionHeader.fromMap((value as Map).cast<String, dynamic>()))),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      serviceTag: pulumi.Input.fromValue(map['serviceTag'] as String),
      virtualNetworkSubnetId: pulumi.Input.fromValue(map['virtualNetworkSubnetId'] as String),
    );
  }
}

