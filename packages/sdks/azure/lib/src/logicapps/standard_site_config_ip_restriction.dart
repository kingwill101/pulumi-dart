// ignore_for_file: unused_element, unnecessary_cast

import 'standard_site_config_ip_restriction_headers.dart';

class StandardSiteConfigIpRestriction {
  /// Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  final String? action;
  /// The Description of this IP Restriction.
  final String? description;
  /// The `headers` block for this specific as a `ip_restriction` block as defined below.
  final StandardSiteConfigIpRestrictionHeaders? headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final String? ipAddress;
  /// The name for this IP Restriction.
  final String? name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified.
  final int? priority;
  /// The Service Tag used for this IP Restriction.
  final String? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// > **Note:** One of either `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified
  final String? virtualNetworkSubnetId;

  /// Creates a new [StandardSiteConfigIpRestriction].
  /// [action] Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  /// [description] The Description of this IP Restriction.
  /// [headers] The `headers` block for this specific as a `ip_restriction` block as defined below.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name for this IP Restriction.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to 65000 if not specified.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  StandardSiteConfigIpRestriction({
    this.action,
    this.description,
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
      'description': ?description,
      'headers': ?headers == null ? null : headers!.toMap(),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory StandardSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return StandardSiteConfigIpRestriction(
      action: map['action'] == null ? null : map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : StandardSiteConfigIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>()),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      serviceTag: map['serviceTag'] == null ? null : map['serviceTag'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : map['virtualNetworkSubnetId'] as String,
    );
  }
}

