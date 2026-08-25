// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegions.
class GetRegionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of regions available in the given project
  final List<String>? names;
  final String? project;
  final String? status;

  /// Creates a new [GetRegionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list of regions available in the given project
  /// [project] Optional.
  /// [status] Optional.
  const GetRegionsResult({
    this.id,
    this.names,
    this.project,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'names': ?names,
      'project': ?project,
      'status': ?status,
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
