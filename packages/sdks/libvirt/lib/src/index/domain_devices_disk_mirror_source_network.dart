// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_mirror_source_network_auth.dart';
import 'domain_devices_disk_mirror_source_network_config.dart';
import 'domain_devices_disk_mirror_source_network_host.dart';
import 'domain_devices_disk_mirror_source_network_identity.dart';
import 'domain_devices_disk_mirror_source_network_initiator.dart';
import 'domain_devices_disk_mirror_source_network_known_hosts.dart';
import 'domain_devices_disk_mirror_source_network_reconnect.dart';
import 'domain_devices_disk_mirror_source_network_snapshot.dart';

class DomainDevicesDiskMirrorSourceNetwork {
  /// Configures authentication settings for the iSCSI source.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkAuth>? auth;
  /// Defines configuration settings for the network in the backing store source.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkConfig>? config;
  /// Configures the hosts within the network settings of the backing store source.
  final pulumi.Input<List<DomainDevicesDiskMirrorSourceNetworkHost>>? hosts;
  /// Sets the identity parameters for the network connection in the backing store source.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkIdentity>? identity;
  /// Sets the initiator for the network connection in the backing store source configuration.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkInitiator>? initiator;
  /// Configures the known hosts used for authenticated connections in network storage operations.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkKnownHosts>? knownHosts;
  /// Sets a name for the network block device, facilitating easier identification.
  final pulumi.Input<String>? name;
  /// Configures the protocol used for network storage access, such as iSCSI or NBD.
  final pulumi.Input<String>? protocol;
  /// Controls query parameters that may influence the network connection establishment.
  final pulumi.Input<String>? query;
  /// Configures reconnect behavior for network storage connections, enhancing robustness in case of interruptions.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkReconnect>? reconnect;
  /// Enables snapshot capabilities for the network storage source, allowing for point-in-time volumes.
  final pulumi.Input<DomainDevicesDiskMirrorSourceNetworkSnapshot>? snapshot;
  /// Controls whether TLS is used for secure connections to the network storage.
  final pulumi.Input<String>? tls;
  /// Sets the expected hostname for the TLS certificate validation during secure network access.
  final pulumi.Input<String>? tlsHostname;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetwork].
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
  const DomainDevicesDiskMirrorSourceNetwork({
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
      'auth': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'config': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskMirrorSourceNetworkHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<DomainDevicesDiskMirrorSourceNetworkHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'initiator': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkInitiator, Map<String, dynamic>>(initiator, (value) => value.toMap()),
      'knownHosts': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkKnownHosts, Map<String, dynamic>>(knownHosts, (value) => value.toMap()),
      'name': ?name,
      'protocol': ?protocol,
      'query': ?query,
      'reconnect': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkReconnect, Map<String, dynamic>>(reconnect, (value) => value.toMap()),
      'snapshot': ?pulumi.Input.mapOptionalInputValue<DomainDevicesDiskMirrorSourceNetworkSnapshot, Map<String, dynamic>>(snapshot, (value) => value.toMap()),
      'tls': ?tls,
      'tlsHostname': ?tlsHostname,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetwork.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetwork(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskMirrorSourceNetworkHost>(guardedValue, (value) => DomainDevicesDiskMirrorSourceNetworkHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initiator: (() { final guardedValue = map['initiator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkInitiator.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knownHosts: (() { final guardedValue = map['knownHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkKnownHosts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconnect: (() { final guardedValue = map['reconnect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkReconnect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesDiskMirrorSourceNetworkSnapshot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsHostname: (() { final guardedValue = map['tlsHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

