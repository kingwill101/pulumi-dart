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
  /// Unique list of valid peer private CIDRs in the form < net_address > / < prefix > .
  final pulumi.Input<List<String>>? peerCidrs;
  /// The ID for the endpoint group that contains private CIDRs in the form < net_address > / < prefix > for the peer side of the connection.
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
  /// [peerCidrs] Unique list of valid peer private CIDRs in the form < net_address > / < prefix > .
  /// [peerEpGroupId] The ID for the endpoint group that contains private CIDRs in the form < net_address > / < prefix > for the peer side of the connection.
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
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dpds: map['dpds'] == null ? null : (pulumi.Input.decodeList<SiteConnectionDpd>(map['dpds'], (value) => SiteConnectionDpd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ikepolicyId: map['ikepolicyId'] == null ? null : (map['ikepolicyId'] as String).input(),
      initiator: map['initiator'] == null ? null : (map['initiator'] as String).input(),
      ipsecpolicyId: map['ipsecpolicyId'] == null ? null : (map['ipsecpolicyId'] as String).input(),
      localEpGroupId: map['localEpGroupId'] == null ? null : (map['localEpGroupId'] as String).input(),
      localId: map['localId'] == null ? null : (map['localId'] as String).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerAddress: map['peerAddress'] == null ? null : (map['peerAddress'] as String).input(),
      peerCidrs: map['peerCidrs'] == null ? null : ((map['peerCidrs'] as List).cast<String>()).input(),
      peerEpGroupId: map['peerEpGroupId'] == null ? null : (map['peerEpGroupId'] as String).input(),
      peerId: map['peerId'] == null ? null : (map['peerId'] as String).input(),
      psk: map['psk'] == null ? null : (map['psk'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
      vpnserviceId: map['vpnserviceId'] == null ? null : (map['vpnserviceId'] as String).input(),
    );
  }
}

