// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_bridge.dart';
import 'domain_devices_interface_source_client.dart';
import 'domain_devices_interface_source_direct.dart';
import 'domain_devices_interface_source_ethernet.dart';
import 'domain_devices_interface_source_hostdev.dart';
import 'domain_devices_interface_source_internal.dart';
import 'domain_devices_interface_source_mcast.dart';
import 'domain_devices_interface_source_network.dart';
import 'domain_devices_interface_source_server.dart';
import 'domain_devices_interface_source_udp.dart';
import 'domain_devices_interface_source_user.dart';
import 'domain_devices_interface_source_vdpa.dart';
import 'domain_devices_interface_source_vds.dart';
import 'domain_devices_interface_source_vhost_user.dart';

class DomainDevicesInterfaceSource {
  /// Sets the bridge configuration for the network interface, allowing the interface to connect via a bridge.
  final pulumi.Input<DomainDevicesInterfaceSourceBridge>? bridge;
  /// Configures the client source for the network interface, typically used for user-mode networking.
  final pulumi.Input<DomainDevicesInterfaceSourceClient>? client;
  /// Configures settings for direct attachment to a physical interface for the network interface.
  final pulumi.Input<DomainDevicesInterfaceSourceDirect>? direct;
  /// Configures Ethernet settings for the network interface, allowing for low-level network configurations.
  final pulumi.Input<DomainDevicesInterfaceSourceEthernet>? ethernet;
  /// Configures the settings for a host device used in the network interface configuration.
  final pulumi.Input<DomainDevicesInterfaceSourceHostdev>? hostdev;
  /// Configures the internal settings for the network interface, typically for non-connected setups.
  final pulumi.Input<DomainDevicesInterfaceSourceInternal>? internal;
  /// Configures the multicast settings for the network interface, enabling multicast communication.
  final pulumi.Input<DomainDevicesInterfaceSourceMcast>? mcast;
  /// Specifies network settings for the interface, configuring its connection to a given network.
  final pulumi.Input<DomainDevicesInterfaceSourceNetwork>? network;
  /// Specifies that the network interface does not connect to any active source, effectively disabling it.
  final pulumi.Input<bool>? null_;
  /// Configures source settings to connect the network interface to a specific server.
  final pulumi.Input<DomainDevicesInterfaceSourceServer>? server;
  /// Configures UDP settings for the network interface, allowing for UDP-based communications.
  final pulumi.Input<DomainDevicesInterfaceSourceUdp>? udp;
  /// Configures user-based settings for the network interface, allowing for user management of the connection.
  final pulumi.Input<DomainDevicesInterfaceSourceUser>? user;
  /// Configures settings for using a vDPA network device with the interface, enabling specialized network performance.
  final pulumi.Input<DomainDevicesInterfaceSourceVdpa>? vdpa;
  /// Configures settings for using a vDS network source with the interface, supporting advanced network features.
  final pulumi.Input<DomainDevicesInterfaceSourceVds>? vds;
  /// Sets configurations for using vhost-user to connect the network interface to a user space application.
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUser>? vhostUser;

  /// Creates a new [DomainDevicesInterfaceSource].
  /// [bridge] Sets the bridge configuration for the network interface, allowing the interface to connect via a bridge.
  /// [client] Configures the client source for the network interface, typically used for user-mode networking.
  /// [direct] Configures settings for direct attachment to a physical interface for the network interface.
  /// [ethernet] Configures Ethernet settings for the network interface, allowing for low-level network configurations.
  /// [hostdev] Configures the settings for a host device used in the network interface configuration.
  /// [internal] Configures the internal settings for the network interface, typically for non-connected setups.
  /// [mcast] Configures the multicast settings for the network interface, enabling multicast communication.
  /// [network] Specifies network settings for the interface, configuring its connection to a given network.
  /// [null_] Specifies that the network interface does not connect to any active source, effectively disabling it.
  /// [server] Configures source settings to connect the network interface to a specific server.
  /// [udp] Configures UDP settings for the network interface, allowing for UDP-based communications.
  /// [user] Configures user-based settings for the network interface, allowing for user management of the connection.
  /// [vdpa] Configures settings for using a vDPA network device with the interface, enabling specialized network performance.
  /// [vds] Configures settings for using a vDS network source with the interface, supporting advanced network features.
  /// [vhostUser] Sets configurations for using vhost-user to connect the network interface to a user space application.
  DomainDevicesInterfaceSource({
    this.bridge,
    this.client,
    this.direct,
    this.ethernet,
    this.hostdev,
    this.internal,
    this.mcast,
    this.network,
    this.null_,
    this.server,
    this.udp,
    this.user,
    this.vdpa,
    this.vds,
    this.vhostUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bridge': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceBridge, Map<String, dynamic>>(bridge, (value) => value.toMap()),
      'client': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceClient, Map<String, dynamic>>(client, (value) => value.toMap()),
      'direct': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceDirect, Map<String, dynamic>>(direct, (value) => value.toMap()),
      'ethernet': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceEthernet, Map<String, dynamic>>(ethernet, (value) => value.toMap()),
      'hostdev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceHostdev, Map<String, dynamic>>(hostdev, (value) => value.toMap()),
      'internal': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceInternal, Map<String, dynamic>>(internal, (value) => value.toMap()),
      'mcast': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceMcast, Map<String, dynamic>>(mcast, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'null': ?null_,
      'server': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceServer, Map<String, dynamic>>(server, (value) => value.toMap()),
      'udp': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceUdp, Map<String, dynamic>>(udp, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceUser, Map<String, dynamic>>(user, (value) => value.toMap()),
      'vdpa': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVdpa, Map<String, dynamic>>(vdpa, (value) => value.toMap()),
      'vds': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVds, Map<String, dynamic>>(vds, (value) => value.toMap()),
      'vhostUser': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUser, Map<String, dynamic>>(vhostUser, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceSource.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSource(
      bridge: (() { final guardedValue = map['bridge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceBridge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceClient.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      direct: (() { final guardedValue = map['direct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceDirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ethernet: (() { final guardedValue = map['ethernet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceEthernet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostdev: (() { final guardedValue = map['hostdev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceHostdev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceInternal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mcast: (() { final guardedValue = map['mcast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceMcast.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      null_: (() { final guardedValue = map['null']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      udp: (() { final guardedValue = map['udp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceUdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vdpa: (() { final guardedValue = map['vdpa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVdpa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vds: (() { final guardedValue = map['vds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vhostUser: (() { final guardedValue = map['vhostUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVhostUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

