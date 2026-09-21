// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomain.
class GetDomainResult {
  /// The uniform resource name of the domain
  final String? domainUrn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The TTL of the domain.
  final int? ttl;
  /// The zone file of the domain.
  final String? zoneFile;

  /// Creates a new [GetDomainResult].
  /// [domainUrn] The uniform resource name of the domain
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [ttl] The TTL of the domain.
  /// [zoneFile] The zone file of the domain.
  const GetDomainResult({
    this.domainUrn,
    this.id,
    this.name,
    this.ttl,
    this.zoneFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainUrn': ?domainUrn,
      'id': ?id,
      'name': ?name,
      'ttl': ?ttl,
      'zoneFile': ?zoneFile,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      domainUrn: (() { final guardedValue = map['domainUrn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      zoneFile: (() { final guardedValue = map['zoneFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
