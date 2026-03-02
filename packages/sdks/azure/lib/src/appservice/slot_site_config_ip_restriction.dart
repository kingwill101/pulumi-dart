// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_site_config_ip_restriction_headers.dart';

class SlotSiteConfigIpRestriction {
  /// Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The `headers` block for this specific `ip_restriction` as defined below. The HTTP header filters are evaluated after the rule itself and both conditions must be true for the rule to apply.
  final pulumi.Input<SlotSiteConfigIpRestrictionHeaders>? headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final pulumi.Input<String>? ipAddress;
  /// The name for this IP Restriction.
  final pulumi.Input<String>? name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  final pulumi.Input<int>? priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String>? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// > **NOTE:** One of either `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [SlotSiteConfigIpRestriction].
  /// [action] Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  /// [headers] The `headers` block for this specific `ip_restriction` as defined below. The HTTP header filters are evaluated after the rule itself and both conditions must be true for the rule to apply.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name for this IP Restriction.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  SlotSiteConfigIpRestriction({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<SlotSiteConfigIpRestrictionHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory SlotSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return SlotSiteConfigIpRestriction(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      headers: map['headers'] == null ? null : (SlotSiteConfigIpRestrictionHeaders.fromMap((map['headers'] as Map).cast<String, dynamic>())).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      serviceTag: map['serviceTag'] == null ? null : (map['serviceTag'] as String).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId'] as String).input(),
    );
  }
}

