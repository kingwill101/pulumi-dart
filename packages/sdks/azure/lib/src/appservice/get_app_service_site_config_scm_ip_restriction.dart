// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_site_config_scm_ip_restriction_headers.dart';

class GetAppServiceSiteConfigScmIpRestriction {
  /// Allow or Deny access for this IP range. Defaults to Allow.
  final pulumi.Input<String> action;
  final pulumi.Input<GetAppServiceSiteConfigScmIpRestrictionHeaders> headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final pulumi.Input<String> ipAddress;
  /// The name of the App Service.
  final pulumi.Input<String> name;
  /// The priority for this IP Restriction.
  final pulumi.Input<int> priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String> serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [GetAppServiceSiteConfigScmIpRestriction].
  /// [action] Allow or Deny access for this IP range. Defaults to Allow.
  /// [headers] Required.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name of the App Service.
  /// [priority] The priority for this IP Restriction.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  GetAppServiceSiteConfigScmIpRestriction({
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
      'headers': pulumi.Input.mapInputValue<GetAppServiceSiteConfigScmIpRestrictionHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ipAddress,
      'name': name,
      'priority': priority,
      'serviceTag': serviceTag,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetAppServiceSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfigScmIpRestriction(
      action: pulumi.Input.fromValue(map['action'] as String),
      headers: pulumi.Input.fromValue(GetAppServiceSiteConfigScmIpRestrictionHeaders.fromMap((map['headers']! as Map).cast<String, dynamic>())),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      serviceTag: pulumi.Input.fromValue(map['serviceTag'] as String),
      virtualNetworkSubnetId: pulumi.Input.fromValue(map['virtualNetworkSubnetId'] as String),
    );
  }
}

