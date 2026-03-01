// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedZone.
class GetManagedZoneResult {
  /// A textual description field.
  final String description;
  /// The fully qualified DNS name of this zone, e.g. `example.io.`.
  final String dnsName;
  final String id;
  final String managedZoneId;
  final String name;
  /// The list of nameservers that will be authoritative for this
  /// domain. Use NS records to redirect from your DNS provider to these names,
  /// thus making Google Cloud DNS authoritative for this zone.
  final List<String> nameServers;
  final String? project;
  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  final String visibility;

  /// Creates a new [GetManagedZoneResult].
  /// [description] A textual description field.
  /// [dnsName] The fully qualified DNS name of this zone, e.g. `example.io.`.
  /// [id] Required.
  /// [managedZoneId] Required.
  /// [name] Required.
  /// [nameServers] The list of nameservers that will be authoritative for this
  /// [project] Optional.
  /// [visibility] The zone's visibility: public zones are exposed to the Internet,
  GetManagedZoneResult({
    required this.description,
    required this.dnsName,
    required this.id,
    required this.managedZoneId,
    required this.name,
    required this.nameServers,
    this.project,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsName': dnsName,
      'id': id,
      'managedZoneId': managedZoneId,
      'name': name,
      'nameServers': nameServers,
      'project': ?project,
      'visibility': visibility,
    };
  }

  factory GetManagedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneResult(
      description: map['description'] as String,
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      managedZoneId: map['managedZoneId'] as String,
      name: map['name'] as String,
      nameServers: (map['nameServers'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      visibility: map['visibility'] as String,
    );
  }
}

