// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPeeredDnsDomain.
class GetPeeredDnsDomainResult {
  final String deletionPolicy;
  final String dnsSuffix;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String network;
  final String parent;
  final String project;
  final String service;

  /// Creates a new [GetPeeredDnsDomainResult].
  /// [deletionPolicy] Required.
  /// [dnsSuffix] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [network] Required.
  /// [parent] Required.
  /// [project] Required.
  /// [service] Required.
  const GetPeeredDnsDomainResult({
    required this.deletionPolicy,
    required this.dnsSuffix,
    required this.id,
    required this.name,
    required this.network,
    required this.parent,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'dnsSuffix': dnsSuffix,
      'id': id,
      'name': name,
      'network': network,
      'parent': parent,
      'project': project,
      'service': service,
    };
  }

  factory GetPeeredDnsDomainResult.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainResult(
      deletionPolicy: map['deletionPolicy'] as String,
      dnsSuffix: map['dnsSuffix'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      parent: map['parent'] as String,
      project: map['project'] as String,
      service: map['service'] as String,
    );
  }
}
