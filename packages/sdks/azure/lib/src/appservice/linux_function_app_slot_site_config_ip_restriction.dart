// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_site_config_ip_restriction_headers.dart';

class LinuxFunctionAppSlotSiteConfigIpRestriction {
  /// The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The Description of this IP Restriction.
  final pulumi.Input<String>? description;
  /// a `headers` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfigIpRestrictionHeaders>? headers;
  /// The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
  final pulumi.Input<String>? ipAddress;
  /// The name which should be used for this `ip_restriction`.
  final pulumi.Input<String>? name;
  /// The priority value of this `ip_restriction`. Defaults to `65000`.
  final pulumi.Input<int>? priority;
  /// The Service Tag used for this IP Restriction.
  final pulumi.Input<String>? serviceTag;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  ///
  /// > **Note:** One and only one of `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified.
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [LinuxFunctionAppSlotSiteConfigIpRestriction].
  /// [action] The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  /// [description] The Description of this IP Restriction.
  /// [headers] a `headers` block as detailed below.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
  /// [name] The name which should be used for this `ip_restriction`.
  /// [priority] The priority value of this `ip_restriction`. Defaults to `65000`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  LinuxFunctionAppSlotSiteConfigIpRestriction({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotSiteConfigIpRestrictionHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory LinuxFunctionAppSlotSiteConfigIpRestriction.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteConfigIpRestriction(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      headers: map['headers'] == null ? null : (LinuxFunctionAppSlotSiteConfigIpRestrictionHeaders.fromMap((map['headers']! as Map).cast<String, dynamic>())).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      serviceTag: map['serviceTag'] == null ? null : (map['serviceTag']! as String).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId']! as String).input(),
    );
  }
}

