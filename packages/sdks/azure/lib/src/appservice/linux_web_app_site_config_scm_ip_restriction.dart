// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_site_config_scm_ip_restriction_headers.dart';

class LinuxWebAppSiteConfigScmIpRestriction {
  /// The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? action;

  /// The Description of this IP Restriction.
  final pulumi.Input<String>? description;

  /// A `headers` block as defined above.
  final pulumi.Input<LinuxWebAppSiteConfigScmIpRestrictionHeaders>? headers;

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
  /// &gt; **Note:** One and only one of `ip_address`, `service_tag` or `virtual_network_subnet_id` must be specified.
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Creates a new [LinuxWebAppSiteConfigScmIpRestriction].
  /// [action] The action to take. Possible values are `Allow` or `Deny`. Defaults to `Allow`.
  /// [description] The Description of this IP Restriction.
  /// [headers] A `headers` block as defined above.
  /// [ipAddress] The CIDR notation of the IP or IP Range to match. For example: `10.0.0.0/24` or `192.168.10.1/32`
  /// [name] The name which should be used for this `ip_restriction`.
  /// [priority] The priority value of this `ip_restriction`. Defaults to `65000`.
  /// [serviceTag] The Service Tag used for this IP Restriction.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  LinuxWebAppSiteConfigScmIpRestriction({
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
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppSiteConfigScmIpRestrictionHeaders,
            Map<String, dynamic>
          >(headers, (value) => value.toMap()),
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'serviceTag': ?serviceTag,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory LinuxWebAppSiteConfigScmIpRestriction.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxWebAppSiteConfigScmIpRestriction(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppSiteConfigScmIpRestrictionHeaders.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serviceTag: (() {
        final guardedValue = map['serviceTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualNetworkSubnetId: (() {
        final guardedValue = map['virtualNetworkSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
