// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bgpvpn_v2_v2_args_doc}
/// The set of arguments for V2.
/// {@endtemplate}
/// {@macro pulumi_bgpvpn_v2_v2_args_doc}
class V2Args {
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

  /// Creates a new [V2Args].
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
  V2Args({
    pulumi.Output<List<String>>? exportTargets,
    pulumi.Output<List<String>>? importTargets,
    pulumi.Output<int>? localPref,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? routeDistinguishers,
    pulumi.Output<List<String>>? routeTargets,
    pulumi.Output<String>? type,
    pulumi.Output<int>? vni,
  }) :
      exportTargets = pulumi.Input.asOptionalInput<List<String>>(exportTargets),
      importTargets = pulumi.Input.asOptionalInput<List<String>>(importTargets),
      localPref = pulumi.Input.asOptionalInput<int>(localPref),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeDistinguishers = pulumi.Input.asOptionalInput<List<String>>(routeDistinguishers),
      routeTargets = pulumi.Input.asOptionalInput<List<String>>(routeTargets),
      type = pulumi.Input.asOptionalInput<String>(type),
      vni = pulumi.Input.asOptionalInput<int>(vni);

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

  factory V2Args.fromMap(Map<String, dynamic> map) {
    return V2Args(
      exportTargets: map['exportTargets'] == null ? null : pulumi.Output.create<List<String>>((map['exportTargets'] as List).cast<String>()),
      importTargets: map['importTargets'] == null ? null : pulumi.Output.create<List<String>>((map['importTargets'] as List).cast<String>()),
      localPref: map['localPref'] == null ? null : pulumi.Output.create<int>(map['localPref'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeDistinguishers: map['routeDistinguishers'] == null ? null : pulumi.Output.create<List<String>>((map['routeDistinguishers'] as List).cast<String>()),
      routeTargets: map['routeTargets'] == null ? null : pulumi.Output.create<List<String>>((map['routeTargets'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vni: map['vni'] == null ? null : pulumi.Output.create<int>(map['vni'] as int),
    );
  }
}

