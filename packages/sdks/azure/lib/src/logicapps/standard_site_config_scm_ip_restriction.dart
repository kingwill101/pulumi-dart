// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_site_config_scm_ip_restriction_headers.dart';

class StandardSiteConfigScmIpRestriction {
  /// Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The Description of this IP Restriction.
  final pulumi.Input<String>? description;
  /// The `headers` block for this specific `ipRestriction` as defined below.
  final pulumi.Input<StandardSiteConfigScmIpRestrictionHeaders>? headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final pulumi.Input<String>? ipAddress;
  /// The name for this IP Restriction.
  final pulumi.Input<String>? name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to `65000` if not specified.
  final pulumi.Input<int>? priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String>? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// &gt; **Note:** One of either `ipAddress`, `serviceTag` or `virtualNetworkSubnetId` must be specified.
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [StandardSiteConfigScmIpRestriction].
  /// [action] Does this restriction `Allow` or `Deny` access for this IP range. Defaults to `Allow`.
  /// [description] The Description of this IP Restriction.
  /// [headers] The `headers` block for this specific `ipRestriction` as defined below.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name for this IP Restriction.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order. By default, the priority is set to `65000` if not specified.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  const StandardSiteConfigScmIpRestriction({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<StandardSiteConfigScmIpRestrictionHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory StandardSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return StandardSiteConfigScmIpRestriction(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardSiteConfigScmIpRestrictionHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serviceTag: (() { final guardedValue = map['serviceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
