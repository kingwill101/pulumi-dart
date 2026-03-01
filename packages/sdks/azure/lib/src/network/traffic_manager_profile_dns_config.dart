// ignore_for_file: unused_element, unnecessary_cast


class TrafficManagerProfileDnsConfig {
  /// The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created.
  final String relativeName;
  /// The TTL value of the Profile used by Local DNS resolvers and clients.
  final int ttl;

  /// Creates a new [TrafficManagerProfileDnsConfig].
  /// [relativeName] The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created.
  /// [ttl] The TTL value of the Profile used by Local DNS resolvers and clients.
  TrafficManagerProfileDnsConfig({
    required this.relativeName,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativeName': relativeName,
      'ttl': ttl,
    };
  }

  factory TrafficManagerProfileDnsConfig.fromMap(Map<String, dynamic> map) {
    return TrafficManagerProfileDnsConfig(
      relativeName: map['relativeName'] as String,
      ttl: map['ttl'] as int,
    );
  }
}

