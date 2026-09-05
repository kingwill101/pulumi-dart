// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_site_config_scm_ip_restriction_headers.dart';

class AppServiceSiteConfigScmIpRestriction {
  /// Allow or Deny access for this IP range. Defaults to `Allow`.
  final pulumi.Input<String?>? action;
  /// The `headers` block for this specific `scmIpRestriction` as defined below.
  final pulumi.Input<AppServiceSiteConfigScmIpRestrictionHeaders?>? headers;
  /// The IP Address used for this IP Restriction in CIDR notation.
  final pulumi.Input<String?>? ipAddress;
  /// The name for this IP Restriction.
  final pulumi.Input<String?>? name;
  /// The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  final pulumi.Input<int?>? priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String?>? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// &gt; **NOTE:** One of either `ipAddress`, `serviceTag` or `virtualNetworkSubnetId` must be specified
  final pulumi.Input<String?>? virtualNetworkSubnetId;

  /// Creates a new [AppServiceSiteConfigScmIpRestriction].
  /// [action] Allow or Deny access for this IP range. Defaults to `Allow`.
  /// [headers] The `headers` block for this specific `scmIpRestriction` as defined below.
  /// [ipAddress] The IP Address used for this IP Restriction in CIDR notation.
  /// [name] The name for this IP Restriction.
  /// [priority] The priority for this IP Restriction. Restrictions are enforced in priority order. By default, priority is set to 65000 if not specified.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  const AppServiceSiteConfigScmIpRestriction({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<AppServiceSiteConfigScmIpRestrictionHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory AppServiceSiteConfigScmIpRestriction.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteConfigScmIpRestriction(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppServiceSiteConfigScmIpRestrictionHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceTag: (() { final guardedValue = map['serviceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
