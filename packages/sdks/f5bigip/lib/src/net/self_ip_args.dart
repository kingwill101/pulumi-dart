// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_net_self_ip_self_ip_args_doc}
/// The set of arguments for SelfIp.
/// {@endtemplate}
/// {@macro pulumi_net_self_ip_self_ip_args_doc}
class SelfIpArgs {
  /// The Self IP's address and netmask. The IP address could also contain the route domain, e.g. `10.12.13.14%4/24`.
  final pulumi.Input<String> ip;
  /// Name of the selfip
  final pulumi.Input<String> name;
  /// Specifies the port lockdown, defaults to `Allow None` if not specified.
  final pulumi.Input<List<String>>? portLockdowns;
  /// Specifies the traffic group, defaults to `traffic-group-local-only` if not specified.
  final pulumi.Input<String>? trafficGroup;
  /// Specifies the VLAN for which you are setting a self IP address. This setting must be provided when a self IP is created.
  final pulumi.Input<String> vlan;

  /// Creates a new [SelfIpArgs].
  /// [ip] The Self IP's address and netmask. The IP address could also contain the route domain, e.g. `10.12.13.14%4/24`.
  /// [name] Name of the selfip
  /// [portLockdowns] Specifies the port lockdown, defaults to `Allow None` if not specified.
  /// [trafficGroup] Specifies the traffic group, defaults to `traffic-group-local-only` if not specified.
  /// [vlan] Specifies the VLAN for which you are setting a self IP address. This setting must be provided when a self IP is created.
  SelfIpArgs({
    required pulumi.Output<String> ip,
    required pulumi.Output<String> name,
    pulumi.Output<List<String>>? portLockdowns,
    pulumi.Output<String>? trafficGroup,
    required pulumi.Output<String> vlan,
  }) :
      ip = pulumi.Input.asInput<String>(ip),
      name = pulumi.Input.asInput<String>(name),
      portLockdowns = pulumi.Input.asOptionalInput<List<String>>(portLockdowns),
      trafficGroup = pulumi.Input.asOptionalInput<String>(trafficGroup),
      vlan = pulumi.Input.asInput<String>(vlan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'name': name,
      'portLockdowns': ?portLockdowns,
      'trafficGroup': ?trafficGroup,
      'vlan': vlan,
    };
  }

  factory SelfIpArgs.fromMap(Map<String, dynamic> map) {
    return SelfIpArgs(
      ip: pulumi.Output.create<String>(map['ip'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      portLockdowns: map['portLockdowns'] == null ? null : pulumi.Output.create<List<String>>((map['portLockdowns'] as List).cast<String>()),
      trafficGroup: map['trafficGroup'] == null ? null : pulumi.Output.create<String>(map['trafficGroup'] as String),
      vlan: pulumi.Output.create<String>(map['vlan'] as String),
    );
  }
}

