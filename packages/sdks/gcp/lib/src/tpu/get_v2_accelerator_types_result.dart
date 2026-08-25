// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2AcceleratorTypes.
class GetV2AcceleratorTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  /// The list of accelerator types available for the given project and zone.
  final List<String>? types;
  final String? zone;

  /// Creates a new [GetV2AcceleratorTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [types] The list of accelerator types available for the given project and zone.
  /// [zone] Optional.
  const GetV2AcceleratorTypesResult({
    this.id,
    this.project,
    this.types,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'project': ?project,
      'types': ?types,
      'zone': ?zone,
    };
  }

  factory GetV2AcceleratorTypesResult.fromMap(Map<String, dynamic> map) {
    return GetV2AcceleratorTypesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
