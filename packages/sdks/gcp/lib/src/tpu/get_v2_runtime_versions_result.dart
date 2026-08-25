// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2RuntimeVersions.
class GetV2RuntimeVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// The list of runtime versions available for the given project and zone.
  final List<String>? versions;
  final String? zone;

  /// Creates a new [GetV2RuntimeVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [versions] The list of runtime versions available for the given project and zone.
  /// [zone] Optional.
  const GetV2RuntimeVersionsResult({
    this.id,
    this.project,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'project': ?project,
      'versions': ?versions,
      'zone': ?zone,
    };
  }

  factory GetV2RuntimeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetV2RuntimeVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
