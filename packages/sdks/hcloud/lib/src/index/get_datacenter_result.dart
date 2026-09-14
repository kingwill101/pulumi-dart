// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatacenter.
class GetDatacenterResult {
  /// List of currently available Server Types in the Datacenter.
  final List<int>? availableServerTypeIds;
  /// Description of the Datacenter.
  final String? description;
  /// ID of the Datacenter.
  final int? id;
  /// Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final Map<String, String>? location;
  /// Name of the Datacenter.
  final String? name;
  /// List of supported Server Types in the Datacenter.
  final List<int>? supportedServerTypeIds;

  /// Creates a new [GetDatacenterResult].
  /// [availableServerTypeIds] List of currently available Server Types in the Datacenter.
  /// [description] Description of the Datacenter.
  /// [id] ID of the Datacenter.
  /// [location] Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Datacenter.
  /// [supportedServerTypeIds] List of supported Server Types in the Datacenter.
  const GetDatacenterResult({
    this.availableServerTypeIds,
    this.description,
    this.id,
    this.location,
    this.name,
    this.supportedServerTypeIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableServerTypeIds': ?availableServerTypeIds,
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'supportedServerTypeIds': ?supportedServerTypeIds,
    };
  }

  factory GetDatacenterResult.fromMap(Map<String, dynamic> map) {
    return GetDatacenterResult(
      availableServerTypeIds: (() { final guardedValue = map['availableServerTypeIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedServerTypeIds: (() { final guardedValue = map['supportedServerTypeIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
    );
  }
}
