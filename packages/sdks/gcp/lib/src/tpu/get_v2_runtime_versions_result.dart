// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2RuntimeVersions.
class GetV2RuntimeVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;
  /// The list of runtime versions available for the given project and zone.
  final List<String> versions;
  final String zone;

  /// Creates a new [GetV2RuntimeVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Required.
  /// [versions] The list of runtime versions available for the given project and zone.
  /// [zone] Required.
  const GetV2RuntimeVersionsResult({
    required this.id,
    required this.project,
    required this.versions,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'project': project,
      'versions': versions,
      'zone': zone,
    };
  }

  factory GetV2RuntimeVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetV2RuntimeVersionsResult(
      id: map['id'] as String,
      project: map['project'] as String,
      versions: (map['versions'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}
