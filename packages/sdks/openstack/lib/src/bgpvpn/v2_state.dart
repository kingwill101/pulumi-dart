// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2 resources.
class V2State {
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
  /// A list of network IDs that are associated with the BGP VPN.
  final pulumi.Input<List<String>>? networks;
  /// A list of port IDs that are associated with the BGP VPN.
  final pulumi.Input<List<String>>? ports;
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
  /// A list of router IDs that are associated with the BGP VPN.
  final pulumi.Input<List<String>>? routers;
  /// Indicates whether the BGP VPN is shared across projects.
  final pulumi.Input<bool>? shared;
  /// The type of the BGP VPN (either `l2` or `l3`). Changing this
  /// creates a new BGP VPN. Defaults to `l3`.
  final pulumi.Input<String>? type;
  /// The globally-assigned VXLAN VNI for the BGP VPN. Changing
  /// this creates a new BGP VPN.
  final pulumi.Input<int>? vni;

  /// Creates a new [V2State].
  /// [exportTargets] A list of additional Route Targets that will be
  /// [importTargets] A list of additional Route Targets that will be
  /// [localPref] The default BGP LOCAL\_PREF of routes that will be
  /// [name] The name of the BGP VPN. Changing this updates the name of
  /// [networks] A list of network IDs that are associated with the BGP VPN.
  /// [ports] A list of port IDs that are associated with the BGP VPN.
  /// [projectId] The ID of the project that owns the BGPVPN. Only
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routeDistinguishers] A list of route distinguisher strings. If
  /// [routeTargets] A list of Route Targets that will be both
  /// [routers] A list of router IDs that are associated with the BGP VPN.
  /// [shared] Indicates whether the BGP VPN is shared across projects.
  /// [type] The type of the BGP VPN (either `l2` or `l3`). Changing this
  /// [vni] The globally-assigned VXLAN VNI for the BGP VPN. Changing
  V2State({
    this.exportTargets,
    this.importTargets,
    this.localPref,
    this.name,
    this.networks,
    this.ports,
    this.projectId,
    this.region,
    this.routeDistinguishers,
    this.routeTargets,
    this.routers,
    this.shared,
    this.type,
    this.vni,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportTargets': ?exportTargets,
      'importTargets': ?importTargets,
      'localPref': ?localPref,
      'name': ?name,
      'networks': ?networks,
      'ports': ?ports,
      'projectId': ?projectId,
      'region': ?region,
      'routeDistinguishers': ?routeDistinguishers,
      'routeTargets': ?routeTargets,
      'routers': ?routers,
      'shared': ?shared,
      'type': ?type,
      'vni': ?vni,
    };
  }

  factory V2State.fromMap(Map<String, dynamic> map) {
    return V2State(
      exportTargets: map['exportTargets'] == null ? null : ((map['exportTargets']! as List).cast<String>()).input(),
      importTargets: map['importTargets'] == null ? null : ((map['importTargets']! as List).cast<String>()).input(),
      localPref: map['localPref'] == null ? null : (map['localPref']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networks: map['networks'] == null ? null : ((map['networks']! as List).cast<String>()).input(),
      ports: map['ports'] == null ? null : ((map['ports']! as List).cast<String>()).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      routeDistinguishers: map['routeDistinguishers'] == null ? null : ((map['routeDistinguishers']! as List).cast<String>()).input(),
      routeTargets: map['routeTargets'] == null ? null : ((map['routeTargets']! as List).cast<String>()).input(),
      routers: map['routers'] == null ? null : ((map['routers']! as List).cast<String>()).input(),
      shared: map['shared'] == null ? null : (map['shared']! as bool).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      vni: map['vni'] == null ? null : (map['vni']! as int).input(),
    );
  }
}

