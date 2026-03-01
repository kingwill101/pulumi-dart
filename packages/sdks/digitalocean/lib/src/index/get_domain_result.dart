// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomain.
class GetDomainResult {
  /// The uniform resource name of the domain
  final String domainUrn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The TTL of the domain.
  final int ttl;
  /// The zone file of the domain.
  final String zoneFile;

  /// Creates a new [GetDomainResult].
  /// [domainUrn] The uniform resource name of the domain
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [ttl] The TTL of the domain.
  /// [zoneFile] The zone file of the domain.
  GetDomainResult({
    required this.domainUrn,
    required this.id,
    required this.name,
    required this.ttl,
    required this.zoneFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUrn': domainUrn,
      'id': id,
      'name': name,
      'ttl': ttl,
      'zoneFile': zoneFile,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      domainUrn: map['domainUrn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ttl: map['ttl'] as int,
      zoneFile: map['zoneFile'] as String,
    );
  }
}

