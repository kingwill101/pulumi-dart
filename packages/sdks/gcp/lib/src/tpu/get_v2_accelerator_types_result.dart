// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2AcceleratorTypes.
class GetV2AcceleratorTypesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;
  /// The list of accelerator types available for the given project and zone.
  final List<String> types;
  final String zone;

  /// Creates a new [GetV2AcceleratorTypesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Required.
  /// [types] The list of accelerator types available for the given project and zone.
  /// [zone] Required.
  GetV2AcceleratorTypesResult({
    required this.id,
    required this.project,
    required this.types,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'project': project,
      'types': types,
      'zone': zone,
    };
  }

  factory GetV2AcceleratorTypesResult.fromMap(Map<String, dynamic> map) {
    return GetV2AcceleratorTypesResult(
      id: map['id'] as String,
      project: map['project'] as String,
      types: (map['types'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}

