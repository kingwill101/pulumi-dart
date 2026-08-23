// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStaticIps.
class GetStaticIpsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;
  /// A list of static IP addresses that Datastream will connect from.
  final List<String> staticIps;

  /// Creates a new [GetStaticIpsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  /// [staticIps] A list of static IP addresses that Datastream will connect from.
  const GetStaticIpsResult({
    required this.id,
    required this.location,
    this.project,
    required this.staticIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'project': ?project,
      'staticIps': staticIps,
    };
  }

  factory GetStaticIpsResult.fromMap(Map<String, dynamic> map) {
    return GetStaticIpsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticIps: (map['staticIps'] as List).cast<String>(),
    );
  }
}
