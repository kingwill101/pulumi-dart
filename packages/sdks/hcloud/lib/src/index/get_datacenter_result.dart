// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDatacenter.
class GetDatacenterResult {
  /// List of currently available Server Types in the Datacenter.
  final List<int> availableServerTypeIds;

  /// Description of the Datacenter.
  final String description;

  /// ID of the Datacenter.
  final int? id;

  /// Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final Map<String, String> location;

  /// Name of the Datacenter.
  final String? name;

  /// List of supported Server Types in the Datacenter.
  final List<int> supportedServerTypeIds;

  /// Creates a new [GetDatacenterResult].
  /// [availableServerTypeIds] List of currently available Server Types in the Datacenter.
  /// [description] Description of the Datacenter.
  /// [id] ID of the Datacenter.
  /// [location] Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Datacenter.
  /// [supportedServerTypeIds] List of supported Server Types in the Datacenter.
  GetDatacenterResult({
    required this.availableServerTypeIds,
    required this.description,
    this.id,
    required this.location,
    this.name,
    required this.supportedServerTypeIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableServerTypeIds': availableServerTypeIds,
      'description': description,
      'id': ?id,
      'location': location,
      'name': ?name,
      'supportedServerTypeIds': supportedServerTypeIds,
    };
  }

  factory GetDatacenterResult.fromMap(Map<String, dynamic> map) {
    return GetDatacenterResult(
      availableServerTypeIds: (map['availableServerTypeIds'] as List)
          .cast<int>(),
      description: map['description'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      location: (map['location'] as Map).cast<String, String>(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      supportedServerTypeIds: (map['supportedServerTypeIds'] as List)
          .cast<int>(),
    );
  }
}
