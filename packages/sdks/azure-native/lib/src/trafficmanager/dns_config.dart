// ignore_for_file: unused_element, unnecessary_cast


/// Class containing DNS settings in a Traffic Manager profile.
class DnsConfig {
  /// The relative DNS name provided by this Traffic Manager profile. This value is combined with the DNS domain name used by Azure Traffic Manager to form the fully-qualified domain name (FQDN) of the profile.
  final String? relativeName;
  /// The DNS Time-To-Live (TTL), in seconds. This informs the local DNS resolvers and DNS clients how long to cache DNS responses provided by this Traffic Manager profile.
  final double? ttl;

  /// Creates a new [DnsConfig].
  /// [relativeName] The relative DNS name provided by this Traffic Manager profile. This value is combined with the DNS domain name used by Azure Traffic Manager to form the fully-qualified domain name (FQDN) of the profile.
  /// [ttl] The DNS Time-To-Live (TTL), in seconds. This informs the local DNS resolvers and DNS clients how long to cache DNS responses provided by this Traffic Manager profile.
  DnsConfig({
    this.relativeName,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativeName': ?relativeName,
      'ttl': ?ttl,
    };
  }

  factory DnsConfig.fromMap(Map<String, dynamic> map) {
    return DnsConfig(
      relativeName: map['relativeName'] == null ? null : map['relativeName'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as double,
    );
  }
}

