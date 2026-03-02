// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetTunnel resources.
class NetTunnelState {
  /// The application service that the object belongs to
  final pulumi.Input<String>? appService;
  /// Specifies whether auto lasthop is enabled or not
  final pulumi.Input<String>? autoLastHop;
  /// User defined description
  final pulumi.Input<String>? description;
  /// Specifies an idle timeout for wildcard tunnels in seconds
  final pulumi.Input<int>? idleTimeout;
  /// The key field may represent different values depending on the type of the tunnel
  final pulumi.Input<int>? key;
  /// Specifies a local IP address. This option is required
  final pulumi.Input<String>? localAddress;
  /// Specifies how the tunnel carries traffic
  final pulumi.Input<String>? mode;
  /// Specifies the maximum transmission unit (MTU) of the tunnel
  final pulumi.Input<int>? mtu;
  /// Name of the tunnel
  final pulumi.Input<String>? name;
  /// Displays the admin-partition within which this component resides
  final pulumi.Input<String>? partition;
  /// Specifies the profile that you want to associate with the tunnel
  final pulumi.Input<String>? profile;
  /// Specifies a remote IP address
  final pulumi.Input<String>? remoteAddress;
  /// Specifies a secondary non-floating IP address when the local-address is set to a floating address
  final pulumi.Input<String>? secondaryAddress;
  /// Specifies a value for insertion into the Type of Service (ToS) octet within the IP header of the encapsulating header of transmitted packets
  final pulumi.Input<String>? tos;
  /// Specifies a traffic-group for use with the tunnel
  final pulumi.Input<String>? trafficGroup;
  /// Enables or disables the tunnel to be transparent
  final pulumi.Input<String>? transparent;
  /// Enables or disables the tunnel to use the PMTU (Path MTU) information provided by ICMP NeedFrag error messages
  final pulumi.Input<String>? usePmtu;

  /// Creates a new [NetTunnelState].
  /// [appService] The application service that the object belongs to
  /// [autoLastHop] Specifies whether auto lasthop is enabled or not
  /// [description] User defined description
  /// [idleTimeout] Specifies an idle timeout for wildcard tunnels in seconds
  /// [key] The key field may represent different values depending on the type of the tunnel
  /// [localAddress] Specifies a local IP address. This option is required
  /// [mode] Specifies how the tunnel carries traffic
  /// [mtu] Specifies the maximum transmission unit (MTU) of the tunnel
  /// [name] Name of the tunnel
  /// [partition] Displays the admin-partition within which this component resides
  /// [profile] Specifies the profile that you want to associate with the tunnel
  /// [remoteAddress] Specifies a remote IP address
  /// [secondaryAddress] Specifies a secondary non-floating IP address when the local-address is set to a floating address
  /// [tos] Specifies a value for insertion into the Type of Service (ToS) octet within the IP header of the encapsulating header of transmitted packets
  /// [trafficGroup] Specifies a traffic-group for use with the tunnel
  /// [transparent] Enables or disables the tunnel to be transparent
  /// [usePmtu] Enables or disables the tunnel to use the PMTU (Path MTU) information provided by ICMP NeedFrag error messages
  NetTunnelState({
    this.appService,
    this.autoLastHop,
    this.description,
    this.idleTimeout,
    this.key,
    this.localAddress,
    this.mode,
    this.mtu,
    this.name,
    this.partition,
    this.profile,
    this.remoteAddress,
    this.secondaryAddress,
    this.tos,
    this.trafficGroup,
    this.transparent,
    this.usePmtu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'autoLastHop': ?autoLastHop,
      'description': ?description,
      'idleTimeout': ?idleTimeout,
      'key': ?key,
      'localAddress': ?localAddress,
      'mode': ?mode,
      'mtu': ?mtu,
      'name': ?name,
      'partition': ?partition,
      'profile': ?profile,
      'remoteAddress': ?remoteAddress,
      'secondaryAddress': ?secondaryAddress,
      'tos': ?tos,
      'trafficGroup': ?trafficGroup,
      'transparent': ?transparent,
      'usePmtu': ?usePmtu,
    };
  }

  factory NetTunnelState.fromMap(Map<String, dynamic> map) {
    return NetTunnelState(
      appService: map['appService'] == null ? null : (map['appService']! as String).input(),
      autoLastHop: map['autoLastHop'] == null ? null : (map['autoLastHop']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout']! as int).input(),
      key: map['key'] == null ? null : (map['key']! as int).input(),
      localAddress: map['localAddress'] == null ? null : (map['localAddress']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
      remoteAddress: map['remoteAddress'] == null ? null : (map['remoteAddress']! as String).input(),
      secondaryAddress: map['secondaryAddress'] == null ? null : (map['secondaryAddress']! as String).input(),
      tos: map['tos'] == null ? null : (map['tos']! as String).input(),
      trafficGroup: map['trafficGroup'] == null ? null : (map['trafficGroup']! as String).input(),
      transparent: map['transparent'] == null ? null : (map['transparent']! as String).input(),
      usePmtu: map['usePmtu'] == null ? null : (map['usePmtu']! as String).input(),
    );
  }
}

