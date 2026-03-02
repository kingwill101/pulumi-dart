// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileDnsConfig {
  /// The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<String> relativeName;
  /// The TTL value of the Profile used by Local DNS resolvers and clients.
  final pulumi.Input<int> ttl;

  /// Creates a new [ProfileDnsConfig].
  /// [relativeName] The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created.
  /// [ttl] The TTL value of the Profile used by Local DNS resolvers and clients.
  ProfileDnsConfig({
    required this.relativeName,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'relativeName': relativeName,
      'ttl': ttl,
    };
  }

  factory ProfileDnsConfig.fromMap(Map<String, dynamic> map) {
    return ProfileDnsConfig(
      relativeName: (map['relativeName'] as String).input(),
      ttl: (map['ttl'] as int).input(),
    );
  }
}

