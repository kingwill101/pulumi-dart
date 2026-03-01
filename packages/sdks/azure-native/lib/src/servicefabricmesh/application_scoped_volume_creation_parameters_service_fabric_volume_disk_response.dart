// ignore_for_file: unused_element, unnecessary_cast


/// Describes parameters for creating application-scoped volumes provided by Service Fabric Volume Disks
class ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse {
  /// User readable description of the volume.
  final String? description;
  /// Specifies the application-scoped volume kind.
  /// Expected value is 'ServiceFabricVolumeDisk'.
  final String kind;
  /// Volume size
  final String sizeDisk;

  /// Creates a new [ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse].
  /// [description] User readable description of the volume.
  /// [kind] Specifies the application-scoped volume kind.
  /// [sizeDisk] Volume size
  ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse({
    this.description,
    required this.kind,
    required this.sizeDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kind': kind,
      'sizeDisk': sizeDisk,
    };
  }

  factory ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse(
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
      sizeDisk: map['sizeDisk'] as String,
    );
  }
}

