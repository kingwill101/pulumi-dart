// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAttachedVersions.
class GetAttachedVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// A list of versions available for use with this project and location.
  final List<String>? validVersions;

  /// Creates a new [GetAttachedVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [validVersions] A list of versions available for use with this project and location.
  const GetAttachedVersionsResult({
    this.id,
    this.location,
    this.project,
    this.validVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'validVersions': ?validVersions,
    };
  }

  factory GetAttachedVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validVersions: (() { final guardedValue = map['validVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
