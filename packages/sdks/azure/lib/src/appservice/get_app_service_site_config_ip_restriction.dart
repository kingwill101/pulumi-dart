// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_service_site_config_ip_restriction_headers.dart';

class GetAppServiceSiteConfigIpRestriction {
  /// Allow or Deny access for this IP range. Defaults to Allow.
  final String action;
  final GetAppServiceSiteConfigIpRestrictionHeaders headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final String ipAddress;
  /// The name of the App Service.
  final String name;
  /// The priority for this IP Restriction.
  final int priority;
  /// The Service Tag used for this IP Restriction.
  final String serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetAppServiceSiteConfigIpRestriction].
  /// [action] Allow or Deny access for this IP range. Defaults to Allow.
  /// [headers] Required.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name of the App Service.
  /// [priority] The priority for this IP Restriction.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  GetAppServiceSiteConfigIpRestriction({
    required this.action,
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
      'headers': headers.toMap(),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetAppServiceSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfigIpRestriction(
      action: map['action'] as String,
      headers: GetAppServiceSiteConfigIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      serviceTag: map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

