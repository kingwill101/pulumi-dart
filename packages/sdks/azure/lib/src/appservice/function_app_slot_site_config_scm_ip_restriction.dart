// ignore_for_file: unused_element, unnecessary_cast

import 'function_app_slot_site_config_scm_ip_restriction_headers.dart';

class FunctionAppSlotSiteConfigScmIpRestriction {
  /// Allow or Deny access for this IP range. Defaults to `Allow`.
  final String? action;
  /// The `headers` block for this specific `scm_ip_restriction` as defined below.
  final FunctionAppSlotSiteConfigScmIpRestrictionHeaders? headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final String? ipAddress;
  /// The name for this IP Restriction.
  final String? name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  final int? priority;
  /// The Service Tag used for this IP Restriction.
  final String? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// > **NOTE:** One of either `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified
  final String? virtualNetworkSubnetId;

  /// Creates a new [FunctionAppSlotSiteConfigScmIpRestriction].
  /// [action] Allow or Deny access for this IP range. Defaults to `Allow`.
  /// [headers] The `headers` block for this specific `scm_ip_restriction` as defined below.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name for this IP Restriction.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  FunctionAppSlotSiteConfigScmIpRestriction({
    this.action,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.serviceTag,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'headers': ?headers == null ? null : headers!.toMap(),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory FunctionAppSlotSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotSiteConfigScmIpRestriction(
      action: map['action'] == null ? null : map['action'] as String,
      headers: map['headers'] == null ? null : FunctionAppSlotSiteConfigScmIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      serviceTag: map['serviceTag'] == null ? null : map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId'] as String,
    );
  }
}

