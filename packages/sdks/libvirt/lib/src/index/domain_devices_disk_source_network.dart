// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_network_auth.dart';
import 'domain_devices_disk_source_network_config.dart';
import 'domain_devices_disk_source_network_host.dart';
import 'domain_devices_disk_source_network_identity.dart';
import 'domain_devices_disk_source_network_initiator.dart';
import 'domain_devices_disk_source_network_known_hosts.dart';
import 'domain_devices_disk_source_network_reconnect.dart';
import 'domain_devices_disk_source_network_snapshot.dart';

class DomainDevicesDiskSourceNetwork {
  /// Configures authentication settings for the iSCSI source.
  final pulumi.Input<DomainDevicesDiskSourceNetworkAuth>? auth;
  /// Defines configuration settings for the network in the backing store source.
  final pulumi.Input<DomainDevicesDiskSourceNetworkConfig>? config;
  /// Configures the hosts within the network settings of the backing store source.
  final pulumi.Input<List<DomainDevicesDiskSourceNetworkHost>>? hosts;
  /// Sets the identity parameters for the network connection in the backing store source.
  final pulumi.Input<DomainDevicesDiskSourceNetworkIdentity>? identity;
  /// Sets the initiator for the network connection in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskSourceNetworkInitiator>? initiator;
  /// Configures the known hosts used for authenticated connections in network storage operations.
  final pulumi.Input<DomainDevicesDiskSourceNetworkKnownHosts>? knownHosts;
  /// Sets a name for the network block device, facilitating easier identification.
  final pulumi.Input<String>? name;
  /// Configures the protocol used for network storage access, such as iSCSI or NBD.
  final pulumi.Input<String>? protocol;
  /// Controls query parameters that may influence the network connection establishment.
  final pulumi.Input<String>? query;
  /// Configures reconnect behavior for network storage connections, enhancing robustness in case of interruptions.
  final pulumi.Input<DomainDevicesDiskSourceNetworkReconnect>? reconnect;
  /// Enables snapshot capabilities for the network storage source, allowing for point-in-time volumes.
  final pulumi.Input<DomainDevicesDiskSourceNetworkSnapshot>? snapshot;
  /// Controls whether TLS is used for secure connections to the network storage.
  final pulumi.Input<String>? tls;
  /// Sets the expected hostname for the TLS certificate validation during secure network access.
  final pulumi.Input<String>? tlsHostname;

  /// Creates a new [DomainDevicesDiskSourceNetwork].
  /// [auth] Configures authentication settings for the iSCSI source.
  /// [config] Defines configuration settings for the network in the backing store source.
  /// [hosts] Configures the hosts within the network settings of the backing store source.
  /// [identity] Sets the identity parameters for the network connection in the backing store source.
  /// [initiator] Sets the initiator for the network connection in the backing store source configuration.
  /// [knownHosts] Configures the known hosts used for authenticated connections in network storage operations.
  /// [name] Sets a name for the network block device, facilitating easier identification.
  /// [protocol] Configures the protocol used for network storage access, such as iSCSI or NBD.
  /// [query] Controls query parameters that may influence the network connection establishment.
  /// [reconnect] Configures reconnect behavior for network storage connections, enhancing robustness in case of interruptions.
  /// [snapshot] Enables snapshot capabilities for the network storage source, allowing for point-in-time volumes.
  /// [tls] Controls whether TLS is used for secure connections to the network storage.
  /// [tlsHostname] Sets the expected hostname for the TLS certificate validation during secure network access.
  DomainDevicesDiskSourceNetwork({
    this.auth,
    this.config,
    this.hosts,
    this.identity,
    this.initiator,
    this.knownHosts,
    this.name,
    this.protocol,
    this.query,
    this.reconnect,
    this.snapshot,
    this.tls,
    this.tlsHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'config': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskSourceNetworkHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<DomainDevicesDiskSourceNetworkHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'initiator': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkInitiator, Map<String, dynamic>>(initiator, (value) => value.toMap()),
      'knownHosts': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkKnownHosts, Map<String, dynamic>>(knownHosts, (value) => value.toMap()),
      'name': ?name,
      'protocol': ?protocol,
      'query': ?query,
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskSourceNetworkSnapshot, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'tls': ?tls,
      'tlsHostname': ?tlsHostname,
    };
  }

  factory DomainDevicesDiskSourceNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetwork(
      auth: map['auth'] == null ? null : (DomainDevicesDiskSourceNetworkAuth.fromMap((map['auth']! as Map).cast<String, dynamic>())).input(),
      config: map['config'] == null ? null : (DomainDevicesDiskSourceNetworkConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskSourceNetworkHost>(map['hosts']!, (value) => DomainDevicesDiskSourceNetworkHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (DomainDevicesDiskSourceNetworkIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      initiator: map['initiator'] == null ? null : (DomainDevicesDiskSourceNetworkInitiator.fromMap((map['initiator']! as Map).cast<String, dynamic>())).input(),
      knownHosts: map['knownHosts'] == null ? null : (DomainDevicesDiskSourceNetworkKnownHosts.fromMap((map['knownHosts']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      query: map['query'] == null ? null : (map['query']! as String).input(),
      reconnect: map['reconnect'] == null ? null : (DomainDevicesDiskSourceNetworkReconnect.fromMap((map['reconnect']! as Map).cast<String, dynamic>())).input(),
      snapshot: map['snapshot'] == null ? null : (DomainDevicesDiskSourceNetworkSnapshot.fromMap((map['snapshot']! as Map).cast<String, dynamic>())).input(),
      tls: map['tls'] == null ? null : (map['tls']! as String).input(),
      tlsHostname: map['tlsHostname'] == null ? null : (map['tlsHostname']! as String).input(),
    );
  }
}

