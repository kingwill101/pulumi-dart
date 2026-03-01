// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_nv_ram_source_network_auth.dart';
import 'domain_os_nv_ram_source_network_config.dart';
import 'domain_os_nv_ram_source_network_host.dart';
import 'domain_os_nv_ram_source_network_identity.dart';
import 'domain_os_nv_ram_source_network_initiator.dart';
import 'domain_os_nv_ram_source_network_known_hosts.dart';
import 'domain_os_nv_ram_source_network_reconnect.dart';
import 'domain_os_nv_ram_source_network_snapshot.dart';

class DomainOsNvRamSourceNetwork {
  /// Configures authentication settings for the iSCSI source.
  final DomainOsNvRamSourceNetworkAuth? auth;
  /// Defines configuration settings for the network in the backing store source.
  final DomainOsNvRamSourceNetworkConfig? config;
  /// Configures the hosts within the network settings of the backing store source.
  final List<DomainOsNvRamSourceNetworkHost>? hosts;
  /// Sets the identity parameters for the network connection in the backing store source.
  final DomainOsNvRamSourceNetworkIdentity? identity;
  /// Sets the initiator for the network connection in the backing store source configuration.
  final DomainOsNvRamSourceNetworkInitiator? initiator;
  /// Configures the known hosts used for authenticated connections in network storage operations.
  final DomainOsNvRamSourceNetworkKnownHosts? knownHosts;
  /// Sets a name for the network block device, facilitating easier identification.
  final String? name;
  /// Configures the protocol used for network storage access, such as iSCSI or NBD.
  final String? protocol;
  /// Controls query parameters that may influence the network connection establishment.
  final String? query;
  /// Configures reconnect behavior for network storage connections, enhancing robustness in case of interruptions.
  final DomainOsNvRamSourceNetworkReconnect? reconnect;
  /// Enables snapshot capabilities for the network storage source, allowing for point-in-time volumes.
  final DomainOsNvRamSourceNetworkSnapshot? snapshot;
  /// Controls whether TLS is used for secure connections to the network storage.
  final String? tls;
  /// Sets the expected hostname for the TLS certificate validation during secure network access.
  final String? tlsHostname;

  /// Creates a new [DomainOsNvRamSourceNetwork].
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
  DomainOsNvRamSourceNetwork({
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
      'hosts': ?hosts == null ? null : pulumi.Input.encodeList<DomainOsNvRamSourceNetworkHost, Map<String, dynamic>>(hosts!, (value) => value.toMap()),
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

  factory DomainOsNvRamSourceNetwork.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetwork(
      auth: map['auth'] == null ? null : DomainOsNvRamSourceNetworkAuth.fromMap((map['auth'] as Map).cast<String, dynamic>()),
      config: map['config'] == null ? null : DomainOsNvRamSourceNetworkConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      hosts: map['hosts'] == null ? null : pulumi.Input.decodeList<DomainOsNvRamSourceNetworkHost>(map['hosts'], (value) => DomainOsNvRamSourceNetworkHost.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : DomainOsNvRamSourceNetworkIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      initiator: map['initiator'] == null ? null : DomainOsNvRamSourceNetworkInitiator.fromMap((map['initiator'] as Map).cast<String, dynamic>()),
      knownHosts: map['knownHosts'] == null ? null : DomainOsNvRamSourceNetworkKnownHosts.fromMap((map['knownHosts'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      reconnect: map['reconnect'] == null ? null : DomainOsNvRamSourceNetworkReconnect.fromMap((map['reconnect'] as Map).cast<String, dynamic>()),
      snapshot: map['snapshot'] == null ? null : DomainOsNvRamSourceNetworkSnapshot.fromMap((map['snapshot'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : map['tls'] as String,
      tlsHostname: map['tlsHostname'] == null ? null : map['tlsHostname'] as String,
    );
  }
}

