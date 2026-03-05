// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_connection_dpd.dart';

/// Input properties used for looking up and filtering SiteConnection resources.
class SiteConnectionState {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing connection.
  final pulumi.Input<bool>? adminStateUp;
  /// The human-readable description for the connection.
  /// Changing this updates the description of the existing connection.
  final pulumi.Input<String>? description;
  /// A dictionary with dead peer detection (DPD) protocol controls.
  final pulumi.Input<List<SiteConnectionDpd>>? dpds;
  /// The ID of the IKE policy. Changing this creates a new connection.
  final pulumi.Input<String>? ikepolicyId;
  /// A valid value is response-only or bi-directional. Default is bi-directional.
  final pulumi.Input<String>? initiator;
  /// The ID of the IPsec policy. Changing this creates a new connection.
  final pulumi.Input<String>? ipsecpolicyId;
  /// The ID for the endpoint group that contains private subnets for the local side of the connection.
  /// You must specify this parameter with the peer_ep_group_id parameter unless
  /// in backward- compatible mode where peer_cidrs is provided with a subnet_id for the VPN service.
  /// Changing this updates the existing connection.
  final pulumi.Input<String>? localEpGroupId;
  /// An ID to be used instead of the external IP address for a virtual router used in traffic between instances on different networks in east-west traffic.
  /// Most often, local ID would be domain name, email address, etc.
  /// If this is not configured then the external IP address will be used as the ID.
  final pulumi.Input<String>? localId;
  /// The maximum transmission unit (MTU) value to address fragmentation.
  /// Minimum value is 68 for IPv4, and 1280 for IPv6.
  final pulumi.Input<int>? mtu;
  /// The name of the connection. Changing this updates the name of
  /// the existing connection.
  final pulumi.Input<String>? name;
  /// The peer gateway public IPv4 or IPv6 address or FQDN.
  final pulumi.Input<String>? peerAddress;
  /// Unique list of valid peer private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; .
  final pulumi.Input<List<String>>? peerCidrs;
  /// The ID for the endpoint group that contains private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; for the peer side of the connection.
  /// You must specify this parameter with the local_ep_group_id parameter unless in backward-compatible mode
  /// where peer_cidrs is provided with a subnet_id for the VPN service.
  final pulumi.Input<String>? peerEpGroupId;
  /// The peer router identity for authentication. A valid value is an IPv4 address, IPv6 address, e-mail address, key ID, or FQDN.
  /// Typically, this value matches the peer_address value.
  /// Changing this updates the existing policy.
  final pulumi.Input<String>? peerId;
  /// The pre-shared key. A valid value is any string.
  final pulumi.Input<String>? psk;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an IPSec site connection. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// site connection.
  final pulumi.Input<String>? region;
  /// The owner of the connection. Required if admin wants to
  /// create a connection for another project. Changing this creates a new connection.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// The ID of the VPN service. Changing this creates a new connection.
  final pulumi.Input<String>? vpnserviceId;

  /// Creates a new [SiteConnectionState].
  /// [adminStateUp] The administrative state of the resource. Can either be up(true) or down(false).
  /// [description] The human-readable description for the connection.
  /// [dpds] A dictionary with dead peer detection (DPD) protocol controls.
  /// [ikepolicyId] The ID of the IKE policy. Changing this creates a new connection.
  /// [initiator] A valid value is response-only or bi-directional. Default is bi-directional.
  /// [ipsecpolicyId] The ID of the IPsec policy. Changing this creates a new connection.
  /// [localEpGroupId] The ID for the endpoint group that contains private subnets for the local side of the connection.
  /// [localId] An ID to be used instead of the external IP address for a virtual router used in traffic between instances on different networks in east-west traffic.
  /// [mtu] The maximum transmission unit (MTU) value to address fragmentation.
  /// [name] The name of the connection. Changing this updates the name of
  /// [peerAddress] The peer gateway public IPv4 or IPv6 address or FQDN.
  /// [peerCidrs] Unique list of valid peer private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; .
  /// [peerEpGroupId] The ID for the endpoint group that contains private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; for the peer side of the connection.
  /// [peerId] The peer router identity for authentication. A valid value is an IPv4 address, IPv6 address, e-mail address, key ID, or FQDN.
  /// [psk] The pre-shared key. A valid value is any string.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The owner of the connection. Required if admin wants to
  /// [valueSpecs] Map of additional options.
  /// [vpnserviceId] The ID of the VPN service. Changing this creates a new connection.
  SiteConnectionState({
    this.adminStateUp,
    this.description,
    this.dpds,
    this.ikepolicyId,
    this.initiator,
    this.ipsecpolicyId,
    this.localEpGroupId,
    this.localId,
    this.mtu,
    this.name,
    this.peerAddress,
    this.peerCidrs,
    this.peerEpGroupId,
    this.peerId,
    this.psk,
    this.region,
    this.tenantId,
    this.valueSpecs,
    this.vpnserviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'dpds': ?pulumi.Input.mapOptionalInputValue<List<SiteConnectionDpd>, List<Map<String, dynamic>>>(dpds, (value) => pulumi.Input.encodeList<SiteConnectionDpd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ikepolicyId': ?ikepolicyId,
      'initiator': ?initiator,
      'ipsecpolicyId': ?ipsecpolicyId,
      'localEpGroupId': ?localEpGroupId,
      'localId': ?localId,
      'mtu': ?mtu,
      'name': ?name,
      'peerAddress': ?peerAddress,
      'peerCidrs': ?peerCidrs,
      'peerEpGroupId': ?peerEpGroupId,
      'peerId': ?peerId,
      'psk': ?psk,
      'region': ?region,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
      'vpnserviceId': ?vpnserviceId,
    };
  }

  factory SiteConnectionState.fromMap(Map<String, dynamic> map) {
    return SiteConnectionState(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dpds: (() { final guardedValue = map['dpds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SiteConnectionDpd>(guardedValue, (value) => SiteConnectionDpd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ikepolicyId: (() { final guardedValue = map['ikepolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initiator: (() { final guardedValue = map['initiator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecpolicyId: (() { final guardedValue = map['ipsecpolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localEpGroupId: (() { final guardedValue = map['localEpGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localId: (() { final guardedValue = map['localId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mtu: (() { final guardedValue = map['mtu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerCidrs: (() { final guardedValue = map['peerCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      peerEpGroupId: (() { final guardedValue = map['peerEpGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerId: (() { final guardedValue = map['peerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psk: (() { final guardedValue = map['psk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpnserviceId: (() { final guardedValue = map['vpnserviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

