// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeTypes.
class GetNodeTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of node types available in the given zone and project.
  final List<String>? names;
  final String? project;
  final String? zone;

  /// Creates a new [GetNodeTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list of node types available in the given zone and project.
  /// [project] Optional.
  /// [zone] Optional.
  const GetNodeTypesResult({
    this.id,
    this.names,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'names': ?names,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetNodeTypesResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTypesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
