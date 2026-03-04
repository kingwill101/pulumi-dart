// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class containing DNS settings in a Traffic Manager profile.
class DnsConfigResponse {
  /// The fully-qualified domain name (FQDN) of the Traffic Manager profile. This is formed from the concatenation of the RelativeName with the DNS domain used by Azure Traffic Manager.
  final pulumi.Input<String> fqdn;

  /// The relative DNS name provided by this Traffic Manager profile. This value is combined with the DNS domain name used by Azure Traffic Manager to form the fully-qualified domain name (FQDN) of the profile.
  final pulumi.Input<String>? relativeName;

  /// The DNS Time-To-Live (TTL), in seconds. This informs the local DNS resolvers and DNS clients how long to cache DNS responses provided by this Traffic Manager profile.
  final pulumi.Input<double>? ttl;

  /// Creates a new [DnsConfigResponse].
  /// [fqdn] The fully-qualified domain name (FQDN) of the Traffic Manager profile. This is formed from the concatenation of the RelativeName with the DNS domain used by Azure Traffic Manager.
  /// [relativeName] The relative DNS name provided by this Traffic Manager profile. This value is combined with the DNS domain name used by Azure Traffic Manager to form the fully-qualified domain name (FQDN) of the profile.
  /// [ttl] The DNS Time-To-Live (TTL), in seconds. This informs the local DNS resolvers and DNS clients how long to cache DNS responses provided by this Traffic Manager profile.
  DnsConfigResponse({required this.fqdn, this.relativeName, this.ttl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'relativeName': ?relativeName,
      'ttl': ?ttl,
    };
  }

  factory DnsConfigResponse.fromMap(Map<String, dynamic> map) {
    return DnsConfigResponse(
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      relativeName: (() {
        final guardedValue = map['relativeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
