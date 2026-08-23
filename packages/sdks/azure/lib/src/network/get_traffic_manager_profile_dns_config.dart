// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficManagerProfileDnsConfig {
  /// The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below.
  final pulumi.Input<String> relativeName;
  /// The TTL value of the Profile used by Local DNS resolvers and clients.
  final pulumi.Input<int> ttl;

  /// Creates a new [GetTrafficManagerProfileDnsConfig].
  /// [relativeName] The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below.
  /// [ttl] The TTL value of the Profile used by Local DNS resolvers and clients.
  const GetTrafficManagerProfileDnsConfig({
    required this.relativeName,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativeName': relativeName,
      'ttl': ttl,
    };
  }

  factory GetTrafficManagerProfileDnsConfig.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerProfileDnsConfig(
      relativeName: pulumi.Input.fromValue(map['relativeName'] as String),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
    );
  }
}
