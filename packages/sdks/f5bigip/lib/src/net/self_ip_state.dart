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
    pulumi.Output<String>? ip,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? portLockdowns,
    pulumi.Output<String>? trafficGroup,
    pulumi.Output<String>? vlan,
  }) :
      ip = pulumi.Input.asOptionalInput<String>(ip),
      name = pulumi.Input.asOptionalInput<String>(name),
      portLockdowns = pulumi.Input.asOptionalInput<List<String>>(portLockdowns),
      trafficGroup = pulumi.Input.asOptionalInput<String>(trafficGroup),
      vlan = pulumi.Input.asOptionalInput<String>(vlan);

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
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portLockdowns: map['portLockdowns'] == null ? null : pulumi.Output.create<List<String>>((map['portLockdowns'] as List).cast<String>()),
      trafficGroup: map['trafficGroup'] == null ? null : pulumi.Output.create<String>(map['trafficGroup'] as String),
      vlan: map['vlan'] == null ? null : pulumi.Output.create<String>(map['vlan'] as String),
    );
  }
}

