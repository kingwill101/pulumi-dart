// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SelfIp resources.
class SelfIpState {
  /// The Self IP's address and netmask. The IP address could also contain the route domain, e.g. `10.12.13.14%4/24`.
  final pulumi.Input<String>? ip;
  /// Name of the selfip
  final pulumi.Input<String>? name;
  /// Specifies the port lockdown, defaults to `Allow None` if not specified.
  final pulumi.Input<List<String>>? portLockdowns;
  /// Specifies the traffic group, defaults to `traffic-group-local-only` if not specified.
  final pulumi.Input<String>? trafficGroup;
  /// Specifies the VLAN for which you are setting a self IP address. This setting must be provided when a self IP is created.
  final pulumi.Input<String>? vlan;

  /// Creates a new [SelfIpState].
  /// [ip] The Self IP's address and netmask. The IP address could also contain the route domain, e.g. `10.12.13.14%4/24`.
  /// [name] Name of the selfip
  /// [portLockdowns] Specifies the port lockdown, defaults to `Allow None` if not specified.
  /// [trafficGroup] Specifies the traffic group, defaults to `traffic-group-local-only` if not specified.
  /// [vlan] Specifies the VLAN for which you are setting a self IP address. This setting must be provided when a self IP is created.
  SelfIpState({
    this.ip,
    this.name,
    this.portLockdowns,
    this.trafficGroup,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'name': ?name,
      'portLockdowns': ?portLockdowns,
      'trafficGroup': ?trafficGroup,
      'vlan': ?vlan,
    };
  }

  factory SelfIpState.fromMap(Map<String, dynamic> map) {
    return SelfIpState(
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      portLockdowns: map['portLockdowns'] == null ? null : ((map['portLockdowns'] as List).cast<String>()).input(),
      trafficGroup: map['trafficGroup'] == null ? null : (map['trafficGroup'] as String).input(),
      vlan: map['vlan'] == null ? null : (map['vlan'] as String).input(),
    );
  }
}

