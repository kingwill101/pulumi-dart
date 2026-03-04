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

  factory V2Args.fromMap(Map<String, dynamic> map) {
    return V2Args(
      exportTargets: (() {
        final guardedValue = map['exportTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      importTargets: (() {
        final guardedValue = map['importTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      localPref: (() {
        final guardedValue = map['localPref'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeDistinguishers: (() {
        final guardedValue = map['routeDistinguishers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      routeTargets: (() {
        final guardedValue = map['routeTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vni: (() {
        final guardedValue = map['vni'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
