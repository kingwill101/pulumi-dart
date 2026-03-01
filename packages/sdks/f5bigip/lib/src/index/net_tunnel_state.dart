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
    pulumi.Output<String>? appService,
    pulumi.Output<String>? autoLastHop,
    pulumi.Output<String>? description,
    pulumi.Output<int>? idleTimeout,
    pulumi.Output<int>? key,
    pulumi.Output<String>? localAddress,
    pulumi.Output<String>? mode,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? profile,
    pulumi.Output<String>? remoteAddress,
    pulumi.Output<String>? secondaryAddress,
    pulumi.Output<String>? tos,
    pulumi.Output<String>? trafficGroup,
    pulumi.Output<String>? transparent,
    pulumi.Output<String>? usePmtu,
  }) :
      appService = pulumi.Input.asOptionalInput<String>(appService),
      autoLastHop = pulumi.Input.asOptionalInput<String>(autoLastHop),
      description = pulumi.Input.asOptionalInput<String>(description),
      idleTimeout = pulumi.Input.asOptionalInput<int>(idleTimeout),
      key = pulumi.Input.asOptionalInput<int>(key),
      localAddress = pulumi.Input.asOptionalInput<String>(localAddress),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      remoteAddress = pulumi.Input.asOptionalInput<String>(remoteAddress),
      secondaryAddress = pulumi.Input.asOptionalInput<String>(secondaryAddress),
      tos = pulumi.Input.asOptionalInput<String>(tos),
      trafficGroup = pulumi.Input.asOptionalInput<String>(trafficGroup),
      transparent = pulumi.Input.asOptionalInput<String>(transparent),
      usePmtu = pulumi.Input.asOptionalInput<String>(usePmtu);

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
      appService: map['appService'] == null ? null : pulumi.Output.create<String>(map['appService'] as String),
      autoLastHop: map['autoLastHop'] == null ? null : pulumi.Output.create<String>(map['autoLastHop'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      idleTimeout: map['idleTimeout'] == null ? null : pulumi.Output.create<int>(map['idleTimeout'] as int),
      key: map['key'] == null ? null : pulumi.Output.create<int>(map['key'] as int),
      localAddress: map['localAddress'] == null ? null : pulumi.Output.create<String>(map['localAddress'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      profile: map['profile'] == null ? null : pulumi.Output.create<String>(map['profile'] as String),
      remoteAddress: map['remoteAddress'] == null ? null : pulumi.Output.create<String>(map['remoteAddress'] as String),
      secondaryAddress: map['secondaryAddress'] == null ? null : pulumi.Output.create<String>(map['secondaryAddress'] as String),
      tos: map['tos'] == null ? null : pulumi.Output.create<String>(map['tos'] as String),
      trafficGroup: map['trafficGroup'] == null ? null : pulumi.Output.create<String>(map['trafficGroup'] as String),
      transparent: map['transparent'] == null ? null : pulumi.Output.create<String>(map['transparent'] as String),
      usePmtu: map['usePmtu'] == null ? null : pulumi.Output.create<String>(map['usePmtu'] as String),
    );
  }
}

