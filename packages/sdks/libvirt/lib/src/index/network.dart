import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_bandwidth.dart';
import 'network_bridge.dart';
import 'network_dns.dart';
import 'network_dnsmasq_options.dart';
import 'network_domain.dart';
import 'network_forward.dart';
import 'network_ip.dart';
import 'network_mac.dart';
import 'network_metadata.dart';
import 'network_mtu.dart';
import 'network_port_group.dart';
import 'network_port_options.dart';
import 'network_route.dart';
import 'network_state.dart';
import 'network_virtual_port.dart';
import 'network_vlan.dart';
import '../internal/package_registration.dart' as package_registration;

/// Virtual network configuration
class Network extends pulumi.CustomResource {
  /// Whether the network should be started automatically when the host boots
  late final pulumi.Output<bool> autostart;
  /// Configures the bandwidth settings for the virtual network, specifying what limits are applied to data transport.
  late final pulumi.Output<NetworkBandwidth?> bandwidth;
  late final pulumi.Output<NetworkBridge?> bridge;
  /// DNS configuration for the network
  late final pulumi.Output<NetworkDns?> dns;
  late final pulumi.Output<NetworkDnsmasqOptions?> dnsmasqOptions;
  /// Configures the domain associated with the network.
  late final pulumi.Output<NetworkDomain?> domain;
  /// Network forwarding mode configuration
  late final pulumi.Output<NetworkForward?> forward;
  /// IP address configuration for the network
  late final pulumi.Output<List<NetworkIp>?> ips;
  /// Controls whether the network provides IPv6 support, as a boolean-like flag (`yes` or `no`).
  ///
  /// See: &lt;https://libvirt.org/formatnetwork.html#general-metadata&gt;
  late final pulumi.Output<String?> ipv6;
  /// Enables configuring a fixed MAC address for the network bridge device.
  late final pulumi.Output<NetworkMac?> mac;
  /// Provides an arbitrary metadata container for the virtual network, typically used by higher-level tools; content is user-defined XML.
  late final pulumi.Output<NetworkMetadata?> metadata;
  /// Configures an MTU definition block for the virtual network; include this block only when you need to override the default MTU.
  late final pulumi.Output<NetworkMtu?> mtu;
  /// Specifies the name of the network configuration.
  late final pulumi.Output<String> name;
  /// Defines one or more port groups that classify guest connections on this network, each with its own settings such as virtual port parameters or QoS.
  ///
  /// See: &lt;https://libvirt.org/formatnetwork.html#portgroups&gt;
  late final pulumi.Output<List<NetworkPortGroup>?> portGroups;
  /// Configures default per-port options for this virtual network, such as isolating traffic between guests connected to the same network.
  late final pulumi.Output<NetworkPortOptions?> portOptions;
  /// Configures one or more static routes associated with this virtual network, informing the host about networks reachable via guests.
  ///
  /// See: &lt;https://libvirt.org/formatnetwork.html#static-routes&gt;
  late final pulumi.Output<List<NetworkRoute>?> routes;
  /// Controls whether the network as a whole trusts guests' receive-side filtering settings, corresponding to the yes/no trustGuestRxFilters flag on the network definition.
  ///
  /// See: &lt;https://libvirt.org/formatnetwork.html#general-metadata&gt;
  late final pulumi.Output<String?> trustGuestRxFilters;
  /// Exposes the network's UUID as assigned by libvirt; this is read-only and computed, and uniquely identifies the virtual network on the host.
  ///
  /// See: &lt;https://libvirt.org/formatnetwork.html#general-metadata&gt;
  late final pulumi.Output<String> uuid;
  /// Configures virtual port profile information for this port group, enabling integration with external network switching or SDN systems.
  late final pulumi.Output<NetworkVirtualPort?> virtualPort;
  /// Configures VLAN tagging behavior for this portgroup, allowing one or more VLAN tags to be applied to guest connections when the underlying network supports VLAN offload.
  late final pulumi.Output<NetworkVlan?> vlan;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_index_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    autostart = registerOutput<bool>('autostart');
    bandwidth = registerOutput<NetworkBandwidth?>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bridge = registerOutput<NetworkBridge?>('bridge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBridge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dns = registerOutput<NetworkDns?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsmasqOptions = registerOutput<NetworkDnsmasqOptions?>('dnsmasqOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDnsmasqOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domain = registerOutput<NetworkDomain?>('domain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forward = registerOutput<NetworkForward?>('forward', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkForward.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ips = registerOutput<List<NetworkIp>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkIp>(guardedValue, (value) => NetworkIp.fromMap((value as Map).cast<String, dynamic>())); });
    ipv6 = registerOutput<String?>('ipv6');
    mac = registerOutput<NetworkMac?>('mac', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMac.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadata = registerOutput<NetworkMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtu = registerOutput<NetworkMtu?>('mtu', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMtu.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    portGroups = registerOutput<List<NetworkPortGroup>?>('portGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkPortGroup>(guardedValue, (value) => NetworkPortGroup.fromMap((value as Map).cast<String, dynamic>())); });
    portOptions = registerOutput<NetworkPortOptions?>('portOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPortOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routes = registerOutput<List<NetworkRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkRoute>(guardedValue, (value) => NetworkRoute.fromMap((value as Map).cast<String, dynamic>())); });
    trustGuestRxFilters = registerOutput<String?>('trustGuestRxFilters');
    uuid = registerOutput<String>('uuid');
    virtualPort = registerOutput<NetworkVirtualPort?>('virtualPort', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVirtualPort.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlan = registerOutput<NetworkVlan?>('vlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autostart = registerOutput<bool>('autostart');
    bandwidth = registerOutput<NetworkBandwidth?>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bridge = registerOutput<NetworkBridge?>('bridge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBridge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dns = registerOutput<NetworkDns?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsmasqOptions = registerOutput<NetworkDnsmasqOptions?>('dnsmasqOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDnsmasqOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domain = registerOutput<NetworkDomain?>('domain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forward = registerOutput<NetworkForward?>('forward', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkForward.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ips = registerOutput<List<NetworkIp>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkIp>(guardedValue, (value) => NetworkIp.fromMap((value as Map).cast<String, dynamic>())); });
    ipv6 = registerOutput<String?>('ipv6');
    mac = registerOutput<NetworkMac?>('mac', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMac.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadata = registerOutput<NetworkMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtu = registerOutput<NetworkMtu?>('mtu', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMtu.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    portGroups = registerOutput<List<NetworkPortGroup>?>('portGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkPortGroup>(guardedValue, (value) => NetworkPortGroup.fromMap((value as Map).cast<String, dynamic>())); });
    portOptions = registerOutput<NetworkPortOptions?>('portOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPortOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routes = registerOutput<List<NetworkRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkRoute>(guardedValue, (value) => NetworkRoute.fromMap((value as Map).cast<String, dynamic>())); });
    trustGuestRxFilters = registerOutput<String?>('trustGuestRxFilters');
    uuid = registerOutput<String>('uuid');
    virtualPort = registerOutput<NetworkVirtualPort?>('virtualPort', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVirtualPort.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlan = registerOutput<NetworkVlan?>('vlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Network] resource.
  Network.reference(String urn)
    : super(
        'libvirt:index/network:Network',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          registerPackageRequest: package_registration.registerPackageRequest,
        isResourceReference: true,
      ) {
    autostart = registerOutput<bool>('autostart');
    bandwidth = registerOutput<NetworkBandwidth?>('bandwidth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBandwidth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bridge = registerOutput<NetworkBridge?>('bridge', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkBridge.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dns = registerOutput<NetworkDns?>('dns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDns.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsmasqOptions = registerOutput<NetworkDnsmasqOptions?>('dnsmasqOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDnsmasqOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    domain = registerOutput<NetworkDomain?>('domain', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkDomain.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forward = registerOutput<NetworkForward?>('forward', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkForward.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ips = registerOutput<List<NetworkIp>?>('ips', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkIp>(guardedValue, (value) => NetworkIp.fromMap((value as Map).cast<String, dynamic>())); });
    ipv6 = registerOutput<String?>('ipv6');
    mac = registerOutput<NetworkMac?>('mac', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMac.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metadata = registerOutput<NetworkMetadata?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mtu = registerOutput<NetworkMtu?>('mtu', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkMtu.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    portGroups = registerOutput<List<NetworkPortGroup>?>('portGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkPortGroup>(guardedValue, (value) => NetworkPortGroup.fromMap((value as Map).cast<String, dynamic>())); });
    portOptions = registerOutput<NetworkPortOptions?>('portOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkPortOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routes = registerOutput<List<NetworkRoute>?>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkRoute>(guardedValue, (value) => NetworkRoute.fromMap((value as Map).cast<String, dynamic>())); });
    trustGuestRxFilters = registerOutput<String?>('trustGuestRxFilters');
    uuid = registerOutput<String>('uuid');
    virtualPort = registerOutput<NetworkVirtualPort?>('virtualPort', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVirtualPort.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlan = registerOutput<NetworkVlan?>('vlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkVlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
