// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_backing_store_source_network_auth.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_config.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_host.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_identity.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_initiator.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_known_hosts.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_reconnect.dart';
import 'domain_devices_disk_mirror_backing_store_source_network_snapshot.dart';

class DomainDevicesDiskMirrorBackingStoreSourceNetwork {
  /// Configures authentication settings for the iSCSI source.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth? auth;
  /// Defines configuration settings for the network in the backing store source.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig? config;
  /// Configures the hosts within the network settings of the backing store source.
  final List<DomainDevicesDiskMirrorBackingStoreSourceNetworkHost>? hosts;
  /// Sets the identity parameters for the network connection in the backing store source.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity? identity;
  /// Sets the initiator for the network connection in the backing store source configuration.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator? initiator;
  /// Configures the known hosts used for authenticated connections in network storage operations.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts? knownHosts;
  /// Sets a name for the network block device, facilitating easier identification.
  final String? name;
  /// Configures the protocol used for network storage access, such as iSCSI or NBD.
  final String? protocol;
  /// Controls query parameters that may influence the network connection establishment.
  final String? query;
  /// Configures reconnect behavior for network storage connections, enhancing robustness in case of interruptions.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect? reconnect;
  /// Enables snapshot capabilities for the network storage source, allowing for point-in-time volumes.
  final DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot? snapshot;
  /// Controls whether TLS is used for secure connections to the network storage.
  final String? tls;
  /// Sets the expected hostname for the TLS certificate validation during secure network access.
  final String? tlsHostname;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetwork].
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
  DomainDevicesDiskMirrorBackingStoreSourceNetwork({
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
      'auth': ?auth == null ? null : auth!.toMap(),
      'config': ?config == null ? null : config!.toMap(),
      'hosts': ?hosts == null ? null : pulumi.Input.encodeList<DomainDevicesDiskMirrorBackingStoreSourceNetworkHost, Map<String, dynamic>>(hosts!, (value) => value.toMap()),
      'identity': ?identity == null ? null : identity!.toMap(),
      'initiator': ?initiator == null ? null : initiator!.toMap(),
      'knownHosts': ?knownHosts == null ? null : knownHosts!.toMap(),
      'name': ?name,
      'protocol': ?protocol,
      'query': ?query,
      'reconnect': ?reconnect == null ? null : reconnect!.toMap(),
      'snapshot': ?snapshot == null ? null : snapshot!.toMap(),
      'tls': ?tls,
      'tlsHostname': ?tlsHostname,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetwork(
      auth: map['auth'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      config: map['config'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskMirrorBackingStoreSourceNetworkHost>(map['hosts'], (value) => DomainDevicesDiskMirrorBackingStoreSourceNetworkHost.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      initiator: map['initiator'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkInitiator.fromMap((map['initiator'] as Map).cast<String, dynamic>()),
      knownHosts: map['knownHosts'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts.fromMap((map['knownHosts'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      reconnect: map['reconnect'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : map['tls'] as String,
      tlsHostname: map['tlsHostname'] == null ? null : map['tlsHostname'] as String,
    );
  }
}

