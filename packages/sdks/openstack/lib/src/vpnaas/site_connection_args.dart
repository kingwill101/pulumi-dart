// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_connection_dpd.dart';

/// {@template pulumi_vpnaas_site_connection_site_connection_args_doc}
/// The set of arguments for SiteConnection.
/// {@endtemplate}
/// {@macro pulumi_vpnaas_site_connection_site_connection_args_doc}
class SiteConnectionArgs {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing connection.
  final pulumi.Input<bool>? adminStateUp;
  /// The human-readable description for the connection.
  /// Changing this updates the description of the existing connection.
  final pulumi.Input<String>? description;
  /// A dictionary with dead peer detection (DPD) protocol controls.
  final pulumi.Input<List<SiteConnectionDpd>>? dpds;
  /// The ID of the IKE policy. Changing this creates a new connection.
  final pulumi.Input<String> ikepolicyId;
  /// A valid value is response-only or bi-directional. Default is bi-directional.
  final pulumi.Input<String>? initiator;
  /// The ID of the IPsec policy. Changing this creates a new connection.
  final pulumi.Input<String> ipsecpolicyId;
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
  final pulumi.Input<String> peerAddress;
  /// Unique list of valid peer private CIDRs in the form < net_address > / < prefix > .
  final pulumi.Input<List<String>>? peerCidrs;
  /// The ID for the endpoint group that contains private CIDRs in the form < net_address > / < prefix > for the peer side of the connection.
  /// You must specify this parameter with the local_ep_group_id parameter unless in backward-compatible mode
  /// where peer_cidrs is provided with a subnet_id for the VPN service.
  final pulumi.Input<String>? peerEpGroupId;
  /// The peer router identity for authentication. A valid value is an IPv4 address, IPv6 address, e-mail address, key ID, or FQDN.
  /// Typically, this value matches the peer_address value.
  /// Changing this updates the existing policy.
  final pulumi.Input<String> peerId;
  /// The pre-shared key. A valid value is any string.
  final pulumi.Input<String> psk;
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
  final pulumi.Input<String> vpnserviceId;

  /// Creates a new [SiteConnectionArgs].
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
  SiteConnectionArgs({
    pulumi.Output<bool>? adminStateUp,
    pulumi.Output<String>? description,
    pulumi.Output<List<SiteConnectionDpd>>? dpds,
    required pulumi.Output<String> ikepolicyId,
    pulumi.Output<String>? initiator,
    required pulumi.Output<String> ipsecpolicyId,
    pulumi.Output<String>? localEpGroupId,
    pulumi.Output<String>? localId,
    pulumi.Output<int>? mtu,
    pulumi.Output<String>? name,
    required pulumi.Output<String> peerAddress,
    pulumi.Output<List<String>>? peerCidrs,
    pulumi.Output<String>? peerEpGroupId,
    required pulumi.Output<String> peerId,
    required pulumi.Output<String> psk,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
    pulumi.Output<Map<String, String>>? valueSpecs,
    required pulumi.Output<String> vpnserviceId,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      description = pulumi.Input.asOptionalInput<String>(description),
      dpds = pulumi.Input.asOptionalInput<List<SiteConnectionDpd>>(dpds),
      ikepolicyId = pulumi.Input.asInput<String>(ikepolicyId),
      initiator = pulumi.Input.asOptionalInput<String>(initiator),
      ipsecpolicyId = pulumi.Input.asInput<String>(ipsecpolicyId),
      localEpGroupId = pulumi.Input.asOptionalInput<String>(localEpGroupId),
      localId = pulumi.Input.asOptionalInput<String>(localId),
      mtu = pulumi.Input.asOptionalInput<int>(mtu),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAddress = pulumi.Input.asInput<String>(peerAddress),
      peerCidrs = pulumi.Input.asOptionalInput<List<String>>(peerCidrs),
      peerEpGroupId = pulumi.Input.asOptionalInput<String>(peerEpGroupId),
      peerId = pulumi.Input.asInput<String>(peerId),
      psk = pulumi.Input.asInput<String>(psk),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs),
      vpnserviceId = pulumi.Input.asInput<String>(vpnserviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'description': ?description,
      'dpds': ?pulumi.Input.mapOptionalInputValue<List<SiteConnectionDpd>, List<Map<String, dynamic>>>(dpds, (value) => pulumi.Input.encodeList<SiteConnectionDpd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ikepolicyId': ikepolicyId,
      'initiator': ?initiator,
      'ipsecpolicyId': ipsecpolicyId,
      'localEpGroupId': ?localEpGroupId,
      'localId': ?localId,
      'mtu': ?mtu,
      'name': ?name,
      'peerAddress': peerAddress,
      'peerCidrs': ?peerCidrs,
      'peerEpGroupId': ?peerEpGroupId,
      'peerId': peerId,
      'psk': psk,
      'region': ?region,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
      'vpnserviceId': vpnserviceId,
    };
  }

  factory SiteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return SiteConnectionArgs(
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dpds: map['dpds'] == null ? null : pulumi.Output.create<List<SiteConnectionDpd>>(pulumi.Input.decodeList<SiteConnectionDpd>(map['dpds'], (value) => SiteConnectionDpd.fromMap((value as Map).cast<String, dynamic>()))),
      ikepolicyId: pulumi.Output.create<String>(map['ikepolicyId'] as String),
      initiator: map['initiator'] == null ? null : pulumi.Output.create<String>(map['initiator'] as String),
      ipsecpolicyId: pulumi.Output.create<String>(map['ipsecpolicyId'] as String),
      localEpGroupId: map['localEpGroupId'] == null ? null : pulumi.Output.create<String>(map['localEpGroupId'] as String),
      localId: map['localId'] == null ? null : pulumi.Output.create<String>(map['localId'] as String),
      mtu: map['mtu'] == null ? null : pulumi.Output.create<int>(map['mtu'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerAddress: pulumi.Output.create<String>(map['peerAddress'] as String),
      peerCidrs: map['peerCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['peerCidrs'] as List).cast<String>()),
      peerEpGroupId: map['peerEpGroupId'] == null ? null : pulumi.Output.create<String>(map['peerEpGroupId'] as String),
      peerId: pulumi.Output.create<String>(map['peerId'] as String),
      psk: pulumi.Output.create<String>(map['psk'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
      vpnserviceId: pulumi.Output.create<String>(map['vpnserviceId'] as String),
    );
  }
}

