// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPoolSetMatchTopology {
  /// A list of ISO 3166-1 alpha-2 country codes. Matches when the request's country is in this list.
  final pulumi.Input<List<String>?>? countries;
  /// A list of Cloudflare PoP codes. Matches when the request's PoP is in this list.
  final pulumi.Input<List<String>?>? pops;
  /// A list of Cloudflare region codes (e.g. `WNAM`, `ENAM`, `WEU`). Matches when the request's region is in this list.
  final pulumi.Input<List<String>?>? regions;

  /// Creates a new [LoadBalancerPoolSetMatchTopology].
  /// [countries] A list of ISO 3166-1 alpha-2 country codes. Matches when the request's country is in this list.
  /// [pops] A list of Cloudflare PoP codes. Matches when the request's PoP is in this list.
  /// [regions] A list of Cloudflare region codes (e.g. `WNAM`, `ENAM`, `WEU`). Matches when the request's region is in this list.
  const LoadBalancerPoolSetMatchTopology({
    this.countries,
    this.pops,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countries': ?countries,
      'pops': ?pops,
      'regions': ?regions,
    };
  }

  factory LoadBalancerPoolSetMatchTopology.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolSetMatchTopology(
      countries: (() { final guardedValue = map['countries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pops: (() { final guardedValue = map['pops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
