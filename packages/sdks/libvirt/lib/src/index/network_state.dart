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

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
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
  /// Exposes the network's UUID as assigned by libvirt; this is read-only and computed, and uniquely identifies the virtual network on the host.
  ///
  /// See: <https://libvirt.org/formatnetwork.html#general-metadata>
  final pulumi.Input<String>? uuid;
  /// Configures virtual port profile information for this port group, enabling integration with external network switching or SDN systems.
  final pulumi.Input<NetworkVirtualPort>? virtualPort;
  /// Configures VLAN tagging behavior for this portgroup, allowing one or more VLAN tags to be applied to guest connections when the underlying network supports VLAN offload.
  final pulumi.Input<NetworkVlan>? vlan;

  /// Creates a new [NetworkState].
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
  /// [uuid] Exposes the network's UUID as assigned by libvirt; this is read-only and computed, and uniquely identifies the virtual network on the host.
  /// [virtualPort] Configures virtual port profile information for this port group, enabling integration with external network switching or SDN systems.
  /// [vlan] Configures VLAN tagging behavior for this portgroup, allowing one or more VLAN tags to be applied to guest connections when the underlying network supports VLAN offload.
  NetworkState({
    this.autostart,
    this.bandwidth,
    this.bridge,
    this.dns,
    this.domain,
    this.forward,
    this.ips,
    this.ipv6,
    this.mac,
    this.metadata,
    this.mtu,
    this.name,
    this.portGroups,
    this.portOptions,
    this.routes,
    this.trustGuestRxFilters,
    this.uuid,
    this.virtualPort,
    this.vlan,
  });

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
      'uuid': ?uuid,
      'virtualPort': ?pulumi.Input.mapOptionalInputValue<NetworkVirtualPort, Map<String, dynamic>>(virtualPort, (value) => value.toMap()),
      'vlan': ?pulumi.Input.mapOptionalInputValue<NetworkVlan, Map<String, dynamic>>(vlan, (value) => value.toMap()),
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      autostart: map['autostart'] == null ? null : (map['autostart']! as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (NetworkBandwidth.fromMap((map['bandwidth']! as Map).cast<String, dynamic>())).input(),
      bridge: map['bridge'] == null ? null : (NetworkBridge.fromMap((map['bridge']! as Map).cast<String, dynamic>())).input(),
      dns: map['dns'] == null ? null : (NetworkDns.fromMap((map['dns']! as Map).cast<String, dynamic>())).input(),
      domain: map['domain'] == null ? null : (NetworkDomain.fromMap((map['domain']! as Map).cast<String, dynamic>())).input(),
      forward: map['forward'] == null ? null : (NetworkForward.fromMap((map['forward']! as Map).cast<String, dynamic>())).input(),
      ips: map['ips'] == null ? null : (pulumi.Input.decodeList<NetworkIp>(map['ips']!, (value) => NetworkIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6']! as String).input(),
      mac: map['mac'] == null ? null : (NetworkMac.fromMap((map['mac']! as Map).cast<String, dynamic>())).input(),
      metadata: map['metadata'] == null ? null : (NetworkMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      mtu: map['mtu'] == null ? null : (NetworkMtu.fromMap((map['mtu']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      portGroups: map['portGroups'] == null ? null : (pulumi.Input.decodeList<NetworkPortGroup>(map['portGroups']!, (value) => NetworkPortGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      portOptions: map['portOptions'] == null ? null : (NetworkPortOptions.fromMap((map['portOptions']! as Map).cast<String, dynamic>())).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<NetworkRoute>(map['routes']!, (value) => NetworkRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustGuestRxFilters: map['trustGuestRxFilters'] == null ? null : (map['trustGuestRxFilters']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
      virtualPort: map['virtualPort'] == null ? null : (NetworkVirtualPort.fromMap((map['virtualPort']! as Map).cast<String, dynamic>())).input(),
      vlan: map['vlan'] == null ? null : (NetworkVlan.fromMap((map['vlan']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

