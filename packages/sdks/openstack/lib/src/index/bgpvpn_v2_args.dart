// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_bgpvpn_v2_bgpvpn_v2_args_doc}
/// The set of arguments for BgpvpnV2.
/// {@endtemplate}
/// {@macro pulumi_index_bgpvpn_v2_bgpvpn_v2_args_doc}
class BgpvpnV2Args {
  /// A list of additional Route Targets that will be
  /// used for export.
  final pulumi.Input<List<String>>? exportTargets;
  /// A list of additional Route Targets that will be
  /// imported.
  final pulumi.Input<List<String>>? importTargets;
  /// The default BGP LOCAL\_PREF of routes that will be
  /// advertised to the BGP VPN, unless overridden per-route.
  final pulumi.Input<int>? localPref;
  /// The name of the BGP VPN. Changing this updates the name of
  /// the existing BGP VPN.
  final pulumi.Input<String>? name;
  /// The ID of the project that owns the BGPVPN. Only
  /// administrative and users with `advsvc` role can specify a project ID other
  /// than their own. Changing this creates a new BGP VPN.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN service. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// BGP VPN.
  final pulumi.Input<String>? region;
  /// A list of route distinguisher strings. If
  /// specified, one of these RDs will be used to advertise VPN routes.
  final pulumi.Input<List<String>>? routeDistinguishers;
  /// A list of Route Targets that will be both
  /// imported and used for export.
  final pulumi.Input<List<String>>? routeTargets;
  /// The type of the BGP VPN (either `l2` or `l3`). Changing this
  /// creates a new BGP VPN. Defaults to `l3`.
  final pulumi.Input<String>? type;
  /// The globally-assigned VXLAN VNI for the BGP VPN. Changing
  /// this creates a new BGP VPN.
  final pulumi.Input<int>? vni;

  /// Creates a new [BgpvpnV2Args].
  /// [exportTargets] A list of additional Route Targets that will be
  /// [importTargets] A list of additional Route Targets that will be
  /// [localPref] The default BGP LOCAL\_PREF of routes that will be
  /// [name] The name of the BGP VPN. Changing this updates the name of
  /// [projectId] The ID of the project that owns the BGPVPN. Only
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routeDistinguishers] A list of route distinguisher strings. If
  /// [routeTargets] A list of Route Targets that will be both
  /// [type] The type of the BGP VPN (either `l2` or `l3`). Changing this
  /// [vni] The globally-assigned VXLAN VNI for the BGP VPN. Changing
  BgpvpnV2Args({
    this.exportTargets,
    this.importTargets,
    this.localPref,
    this.name,
    this.projectId,
    this.region,
    this.routeDistinguishers,
    this.routeTargets,
    this.type,
    this.vni,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportTargets': ?exportTargets,
      'importTargets': ?importTargets,
      'localPref': ?localPref,
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'routeDistinguishers': ?routeDistinguishers,
      'routeTargets': ?routeTargets,
      'type': ?type,
      'vni': ?vni,
    };
  }

  factory BgpvpnV2Args.fromMap(Map<String, dynamic> map) {
    return BgpvpnV2Args(
      exportTargets: map['exportTargets'] == null ? null : ((map['exportTargets']! as List).cast<String>()).input(),
      importTargets: map['importTargets'] == null ? null : ((map['importTargets']! as List).cast<String>()).input(),
      localPref: map['localPref'] == null ? null : (map['localPref']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      routeDistinguishers: map['routeDistinguishers'] == null ? null : ((map['routeDistinguishers']! as List).cast<String>()).input(),
      routeTargets: map['routeTargets'] == null ? null : ((map['routeTargets']! as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vni: map['vni'] == null ? null : (map['vni']! as int).input(),
    );
  }
}

