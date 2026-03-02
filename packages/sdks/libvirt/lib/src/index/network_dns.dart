// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_dns_forwarder.dart';
import 'network_dns_host.dart';
import 'network_dns_sr_v.dart';
import 'network_dns_tx_t.dart';

class NetworkDns {
  /// Sets whether DNS features are enabled for the network, allowing the network to resolve domain names.
  final pulumi.Input<String>? enable;
  /// Configures the option to forward plain names in DNS resolution, affecting how traffic is managed for unqualified names.
  final pulumi.Input<String>? forwardPlainNames;
  /// Specifies the DNS forwarders for the network, indicating external servers that handle DNS queries.
  final pulumi.Input<List<NetworkDnsForwarder>>? forwarders;
  /// Defines the host settings for DNS within the virtual network, controlling how local hostnames are resolved.
  final pulumi.Input<List<NetworkDnsHost>>? hosts;
  /// Configures the SRV records for the DNS entries.
  final pulumi.Input<List<NetworkDnsSrV>>? srVs;
  /// Configures TXT records for DNS entries.
  final pulumi.Input<List<NetworkDnsTxT>>? txTs;

  /// Creates a new [NetworkDns].
  /// [enable] Sets whether DNS features are enabled for the network, allowing the network to resolve domain names.
  /// [forwardPlainNames] Configures the option to forward plain names in DNS resolution, affecting how traffic is managed for unqualified names.
  /// [forwarders] Specifies the DNS forwarders for the network, indicating external servers that handle DNS queries.
  /// [hosts] Defines the host settings for DNS within the virtual network, controlling how local hostnames are resolved.
  /// [srVs] Configures the SRV records for the DNS entries.
  /// [txTs] Configures TXT records for DNS entries.
  NetworkDns({
    this.enable,
    this.forwardPlainNames,
    this.forwarders,
    this.hosts,
    this.srVs,
    this.txTs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'forwardPlainNames': ?forwardPlainNames,
      'forwarders': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsForwarder>, List<Map<String, dynamic>>>(forwarders, (value) => pulumi.Input.encodeList<NetworkDnsForwarder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<NetworkDnsHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srVs': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsSrV>, List<Map<String, dynamic>>>(srVs, (value) => pulumi.Input.encodeList<NetworkDnsSrV, Map<String, dynamic>>(value, (value) => value.toMap())),
      'txTs': ?pulumi.Input.mapOptionalInputValue<List<NetworkDnsTxT>, List<Map<String, dynamic>>>(txTs, (value) => pulumi.Input.encodeList<NetworkDnsTxT, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkDns.fromMap(Map<String, dynamic> map) {
    return NetworkDns(
      enable: map['enable'] == null ? null : (map['enable']! as String).input(),
      forwardPlainNames: map['forwardPlainNames'] == null ? null : (map['forwardPlainNames']! as String).input(),
      forwarders: map['forwarders'] == null ? null : (pulumi.Input.decodeList<NetworkDnsForwarder>(map['forwarders']!, (value) => NetworkDnsForwarder.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<NetworkDnsHost>(map['hosts']!, (value) => NetworkDnsHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srVs: map['srVs'] == null ? null : (pulumi.Input.decodeList<NetworkDnsSrV>(map['srVs']!, (value) => NetworkDnsSrV.fromMap((value as Map).cast<String, dynamic>()))).input(),
      txTs: map['txTs'] == null ? null : (pulumi.Input.decodeList<NetworkDnsTxT>(map['txTs']!, (value) => NetworkDnsTxT.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

