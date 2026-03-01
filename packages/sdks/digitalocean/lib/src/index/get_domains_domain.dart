// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomain {
  /// (Required) The name of the domain.
  final String name;
  /// The TTL of the domain.
  final int ttl;
  /// The uniform resource name of the domain
  final String urn;

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
      name: map['name'] as String,
      ttl: map['ttl'] as int,
      urn: map['urn'] as String,
    );
  }
}

