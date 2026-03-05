// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_net_tunnel_net_tunnel_args_doc}
/// The set of arguments for NetTunnel.
/// {@endtemplate}
/// {@macro pulumi_index_net_tunnel_net_tunnel_args_doc}
class NetTunnelArgs {
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
  final pulumi.Input<String> localAddress;
  /// Specifies how the tunnel carries traffic
  final pulumi.Input<String>? mode;
  /// Specifies the maximum transmission unit (MTU) of the tunnel
  final pulumi.Input<int>? mtu;
  /// Name of the tunnel
  final pulumi.Input<String> name;
  /// Displays the admin-partition within which this component resides
  final pulumi.Input<String>? partition;
  /// Specifies the profile that you want to associate with the tunnel
  final pulumi.Input<String> profile;
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

  /// Creates a new [NetTunnelArgs].
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
  NetTunnelArgs({
    this.appService,
    this.autoLastHop,
    this.description,
    this.idleTimeout,
    this.key,
    required this.localAddress,
    this.mode,
    this.mtu,
    required this.name,
    this.partition,
    required this.profile,
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
      'localAddress': localAddress,
      'mode': ?mode,
      'mtu': ?mtu,
      'name': name,
      'partition': ?partition,
      'profile': profile,
      'remoteAddress': ?remoteAddress,
      'secondaryAddress': ?secondaryAddress,
      'tos': ?tos,
      'trafficGroup': ?trafficGroup,
      'transparent': ?transparent,
      'usePmtu': ?usePmtu,
    };
  }

  factory NetTunnelArgs.fromMap(Map<String, dynamic> map) {
    return NetTunnelArgs(
      appService: (() { final guardedValue = map['appService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoLastHop: (() { final guardedValue = map['autoLastHop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localAddress: pulumi.Input.fromValue(map['localAddress'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: pulumi.Input.fromValue(map['profile'] as String),
      remoteAddress: (() { final guardedValue = map['remoteAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAddress: (() { final guardedValue = map['secondaryAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tos: (() { final guardedValue = map['tos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficGroup: (() { final guardedValue = map['trafficGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transparent: (() { final guardedValue = map['transparent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usePmtu: (() { final guardedValue = map['usePmtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

