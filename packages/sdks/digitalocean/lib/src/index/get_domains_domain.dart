// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomain {
  /// (Required) The name of the domain.
  final pulumi.Input<String> name;
  /// The TTL of the domain.
  final pulumi.Input<int> ttl;
  /// The uniform resource name of the domain
  final pulumi.Input<String> urn;

  /// Creates a new [GetDomainsDomain].
  /// [name] (Required) The name of the domain.
  /// [ttl] The TTL of the domain.
  /// [urn] The uniform resource name of the domain
  GetDomainsDomain({
    required this.name,
    required this.ttl,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ttl': ttl,
      'urn': urn,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      name: (map['name'] as String).input(),
      ttl: (map['ttl'] as int).input(),
      urn: (map['urn'] as String).input(),
    );
  }
}

