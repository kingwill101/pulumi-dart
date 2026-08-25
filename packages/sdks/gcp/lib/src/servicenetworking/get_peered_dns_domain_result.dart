// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPeeredDnsDomain.
class GetPeeredDnsDomainResult {
  final String? deletionPolicy;
  final String? dnsSuffix;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? network;
  final String? parent;
  final String? project;
  final String? service;

  /// Creates a new [GetPeeredDnsDomainResult].
  /// [deletionPolicy] Optional.
  /// [dnsSuffix] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] Optional.
  /// [parent] Optional.
  /// [project] Optional.
  /// [service] Optional.
  const GetPeeredDnsDomainResult({
    this.deletionPolicy,
    this.dnsSuffix,
    this.id,
    this.name,
    this.network,
    this.parent,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'dnsSuffix': ?dnsSuffix,
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'parent': ?parent,
      'project': ?project,
      'service': ?service,
    };
  }

  factory GetPeeredDnsDomainResult.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
