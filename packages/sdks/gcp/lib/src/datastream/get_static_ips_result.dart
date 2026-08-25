// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStaticIps.
class GetStaticIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// A list of static IP addresses that Datastream will connect from.
  final List<String>? staticIps;

  /// Creates a new [GetStaticIpsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [staticIps] A list of static IP addresses that Datastream will connect from.
  const GetStaticIpsResult({
    this.id,
    this.location,
    this.project,
    this.staticIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'staticIps': ?staticIps,
    };
  }

  factory GetStaticIpsResult.fromMap(Map<String, dynamic> map) {
    return GetStaticIpsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticIps: (() { final guardedValue = map['staticIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
