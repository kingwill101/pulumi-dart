// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_bandwidth.dart';
import 'network_bridge.dart';
import 'network_dns.dart';
import 'network_domain.dart';
import 'network_forward.dart';
import 'network_ip.dart';
import 'network_mac.dart';
import 'network_metadata.dart';
import 'network_mtu.dart';
import 'network_port_group.dart';
import 'network_port_options.dart';
import 'network_route.dart';
import 'network_virtual_port.dart';
import 'network_vlan.dart';

/// {@template pulumi_index_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_index_network_network_args_doc}
class NetworkArgs {
  /// Whether the network should be started automatically when the host boots
  final pulumi.Input<bool>? autostart;
  /// Configures the bandwidth settings for the virtual network, specifying what limits are applied to data transport.
  final pulumi.Input<NetworkBandwidth>? bandwidth;
  final pulumi.Input<NetworkBridge>? bridge;
  /// DNS configuration for the network
  final pulumi.Input<NetworkDns>? dns;
  /// Configures the domain associated with the network.
  final pulumi.Input<NetworkDomain>? domain;
  /// Network forwarding mode configuration
  final pulumi.Input<NetworkForward>? forward;
  /// IP address configuration for the network
  final pulumi.Input<List<NetworkIp>>? ips;
  /// Controls whether the network provides IPv6 support, as a boolean-like flag (`yes` or `no`).
  ///
  /// See: <https://libvirt.org/formatnetwork.html#general-metadata>
  final pulumi.Input<String>? ipv6;
  /// Enables configuring a fixed MAC address for the network bridge device.
  final pulumi.Input<NetworkMac>? mac;
  /// Provides an arbitrary metadata container for the virtual network, typically used by higher-level tools; content is user-defined XML.
  final pulumi.Input<NetworkMetadata>? metadata;
  /// Configures an MTU definition block for the virtual network; include this block only when you need to override the default MTU.
  final pulumi.Input<NetworkMtu>? mtu;
  /// Specifies the name of the network configuration.
  final pulumi.Input<String>? name;
  /// Defines one or more port groups that classify guest connections on this network, each with its own settings such as virtual port parameters or QoS.
  ///
  /// See: <https://libvirt.org/formatnetwork.html#portgroups>
  final pulumi.Input<List<NetworkPortGroup>>? portGroups;
  /// Configures default per-port options for this virtual network, such as isolating traffic between guests connected to the same network.
  final pulumi.Input<NetworkPortOptions>? portOptions;
  /// Configures one or more static routes associated with this virtual network, informing the host about networks reachable via guests.
  ///
  /// See: <https://libvirt.org/formatnetwork.html#static-routes>
  final pulumi.Input<List<NetworkRoute>>? routes;
  /// Controls whether the network as a whole trusts guests' receive-side filtering settings, corresponding to the yes/no trustGuestRxFilters flag on the network definition.
  ///
  /// See: <https://libvirt.org/formatnetwork.html#general-metadata>
  final pulumi.Input<String>? trustGuestRxFilters;
  /// Configures virtual port profile information for this port group, enabling integration with external network switching or SDN systems.
  final pulumi.Input<NetworkVirtualPort>? virtualPort;
  /// Configures VLAN tagging behavior for this portgroup, allowing one or more VLAN tags to be applied to guest connections when the underlying network supports VLAN offload.
  final pulumi.Input<NetworkVlan>? vlan;

  /// Creates a new [NetworkArgs].
  /// [autostart] Whether the network should be started automatically when the host boots
  /// [bandwidth] Configures the bandwidth settings for the virtual network, specifying what limits are applied to data transport.
  /// [bridge] Optional.
  /// [dns] DNS configuration for the network
  /// [domain] Configures the domain associated with the network.
  /// [forward] Network forwarding mode configuration
  /// [ips] IP address configuration for the network
  /// [ipv6] Controls whether the network provides IPv6 support, as a boolean-like flag (`yes` or `no`).
  /// [mac] Enables configuring a fixed MAC address for the network bridge device.
  /// [metadata] Provides an arbitrary metadata container for the virtual network, typically used by higher-level tools; content is user-defined XML.
  /// [mtu] Configures an MTU definition block for the virtual network; include this block only when you need to override the default MTU.
  /// [name] Specifies the name of the network configuration.
  /// [portGroups] Defines one or more port groups that classify guest connections on this network, each with its own settings such as virtual port parameters or QoS.
  /// [portOptions] Configures default per-port options for this virtual network, such as isolating traffic between guests connected to the same network.
  /// [routes] Configures one or more static routes associated with this virtual network, informing the host about networks reachable via guests.
  /// [trustGuestRxFilters] Controls whether the network as a whole trusts guests' receive-side filtering settings, corresponding to the yes/no trustGuestRxFilters flag on the network definition.
  /// [virtualPort] Configures virtual port profile information for this port group, enabling integration with external network switching or SDN systems.
  /// [vlan] Configures VLAN tagging behavior for this portgroup, allowing one or more VLAN tags to be applied to guest connections when the underlying network supports VLAN offload.
  NetworkArgs({
    pulumi.Output<bool>? autostart,
    pulumi.Output<NetworkBandwidth>? bandwidth,
    pulumi.Output<NetworkBridge>? bridge,
    pulumi.Output<NetworkDns>? dns,
    pulumi.Output<NetworkDomain>? domain,
    pulumi.Output<NetworkForward>? forward,
    pulumi.Output<List<NetworkIp>>? ips,
    pulumi.Output<String>? ipv6,
    pulumi.Output<NetworkMac>? mac,
    pulumi.Output<NetworkMetadata>? metadata,
    pulumi.Output<NetworkMtu>? mtu,
    pulumi.Output<String>? name,
    pulumi.Output<List<NetworkPortGroup>>? portGroups,
    pulumi.Output<NetworkPortOptions>? portOptions,
    pulumi.Output<List<NetworkRoute>>? routes,
    pulumi.Output<String>? trustGuestRxFilters,
    pulumi.Output<NetworkVirtualPort>? virtualPort,
    pulumi.Output<NetworkVlan>? vlan,
  }) :
      autostart = pulumi.Input.asOptionalInput<bool>(autostart),
      bandwidth = pulumi.Input.asOptionalInput<NetworkBandwidth>(bandwidth),
      bridge = pulumi.Input.asOptionalInput<NetworkBridge>(bridge),
      dns = pulumi.Input.asOptionalInput<NetworkDns>(dns),
      domain = pulumi.Input.asOptionalInput<NetworkDomain>(domain),
      forward = pulumi.Input.asOptionalInput<NetworkForward>(forward),
      ips = pulumi.Input.asOptionalInput<List<NetworkIp>>(ips),
      ipv6 = pulumi.Input.asOptionalInput<String>(ipv6),
      mac = pulumi.Input.asOptionalInput<NetworkMac>(mac),
      metadata = pulumi.Input.asOptionalInput<NetworkMetadata>(metadata),
      mtu = pulumi.Input.asOptionalInput<NetworkMtu>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      portGroups = pulumi.Input.asOptionalInput<List<NetworkPortGroup>>(portGroups),
      portOptions = pulumi.Input.asOptionalInput<NetworkPortOptions>(portOptions),
      routes = pulumi.Input.asOptionalInput<List<NetworkRoute>>(routes),
      trustGuestRxFilters = pulumi.Input.asOptionalInput<String>(trustGuestRxFilters),
      virtualPort = pulumi.Input.asOptionalInput<NetworkVirtualPort>(virtualPort),
      vlan = pulumi.Input.asOptionalInput<NetworkVlan>(vlan);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autostart': ?autostart,
      'bandwidth': ?pulumi.Input.mapOptionalInputValue<NetworkBandwidth, Map<String, dynamic>>(bandwidth, (value) => value.toMap()),
      'bridge': ?pulumi.Input.mapOptionalInputValue<NetworkBridge, Map<String, dynamic>>(bridge, (value) => value.toMap()),
      'dns': ?pulumi.Input.mapOptionalInputValue<NetworkDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'domain': ?pulumi.Input.mapOptionalInputValue<NetworkDomain, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'forward': ?pulumi.Input.mapOptionalInputValue<NetworkForward, Map<String, dynamic>>(forward, (value) => value.toMap()),
      'ips': ?pulumi.Input.mapOptionalInputValue<List<NetworkIp>, List<Map<String, dynamic>>>(ips, (value) => pulumi.Input.encodeList<NetworkIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6': ?ipv6,
      'mac': ?pulumi.Input.mapOptionalInputValue<NetworkMac, Map<String, dynamic>>(mac, (value) => value.toMap()),
      'metadata': ?pulumi.Input.mapOptionalInputValue<NetworkMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'mtu': ?pulumi.Input.mapOptionalInputValue<NetworkMtu, Map<String, dynamic>>(mtu, (value) => value.toMap()),
      'name': ?name,
      'portGroups': ?pulumi.Input.mapOptionalInputValue<List<NetworkPortGroup>, List<Map<String, dynamic>>>(portGroups, (value) => pulumi.Input.encodeList<NetworkPortGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portOptions': ?pulumi.Input.mapOptionalInputValue<NetworkPortOptions, Map<String, dynamic>>(portOptions, (value) => value.toMap()),
      'routes': ?pulumi.Input.mapOptionalInputValue<List<NetworkRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<NetworkRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustGuestRxFilters': ?trustGuestRxFilters,
      'virtualPort': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualPort, Map<String, dynamic>>(virtualPort, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<NetworkVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      autostart: map['autostart'] == null ? null : pulumi.Output.create<bool>(map['autostart'] as bool),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<NetworkBandwidth>(NetworkBandwidth.fromMap((map['bandwidth'] as Map).cast<String, dynamic>())),
      bridge: map['bridge'] == null ? null : pulumi.Output.create<NetworkBridge>(NetworkBridge.fromMap((map['bridge'] as Map).cast<String, dynamic>())),
      dns: map['dns'] == null ? null : pulumi.Output.create<NetworkDns>(NetworkDns.fromMap((map['dns'] as Map).cast<String, dynamic>())),
      domain: map['domain'] == null ? null : pulumi.Output.create<NetworkDomain>(NetworkDomain.fromMap((map['domain'] as Map).cast<String, dynamic>())),
      forward: map['forward'] == null ? null : pulumi.Output.create<NetworkForward>(NetworkForward.fromMap((map['forward'] as Map).cast<String, dynamic>())),
      ips: map['ips'] == null ? null : pulumi.Output.create<List<NetworkIp>>(pulumi.Input.decodeList<NetworkIp>(map['ips'], (value) => NetworkIp.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<String>(map['ipv6'] as String),
      mac: map['mac'] == null ? null : pulumi.Output.create<NetworkMac>(NetworkMac.fromMap((map['mac'] as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<NetworkMetadata>(NetworkMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<NetworkMtu>(NetworkMtu.fromMap((map['mtu'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portGroups: map['portGroups'] == null ? null : pulumi.Output.create<List<NetworkPortGroup>>(pulumi.Input.decodeList<NetworkPortGroup>(map['portGroups'], (value) => NetworkPortGroup.fromMap((value as Map).cast<String, dynamic>()))),
      portOptions: map['portOptions'] == null ? null : pulumi.Output.create<NetworkPortOptions>(NetworkPortOptions.fromMap((map['portOptions'] as Map).cast<String, dynamic>())),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<NetworkRoute>>(pulumi.Input.decodeList<NetworkRoute>(map['routes'], (value) => NetworkRoute.fromMap((value as Map).cast<String, dynamic>()))),
      trustGuestRxFilters: map['trustGuestRxFilters'] == null ? null : pulumi.Output.create<String>(map['trustGuestRxFilters'] as String),
      virtualPort: map['virtualPort'] == null ? null : pulumi.Output.create<NetworkVirtualPort>(NetworkVirtualPort.fromMap((map['virtualPort'] as Map).cast<String, dynamic>())),
      vlan: map['vlan'] == null ? null : pulumi.Output.create<NetworkVlan>(NetworkVlan.fromMap((map['vlan'] as Map).cast<String, dynamic>())),
    );
  }
}

