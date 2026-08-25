// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocations.
class GetLocationsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of Cloud Run locations available for the given project.
  final List<String>? locations;
  final String? project;

  /// Creates a new [GetLocationsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locations] The list of Cloud Run locations available for the given project.
  /// [project] Optional.
  const GetLocationsResult({
    this.id,
    this.locations,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'locations': ?locations,
      'project': ?project,
    };
  }

  factory GetLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetLocationsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
