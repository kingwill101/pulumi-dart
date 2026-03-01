// ignore_for_file: unused_element, unnecessary_cast


/// Describes parameters for creating application-scoped volumes provided by Service Fabric Volume Disks
class ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk {
  /// User readable description of the volume.
  final String? description;
  /// Specifies the application-scoped volume kind.
  /// Expected value is 'ServiceFabricVolumeDisk'.
  final String kind;
  /// Volume size
  final String sizeDisk;

  /// Creates a new [ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk].
  /// [description] User readable description of the volume.
  /// [kind] Specifies the application-scoped volume kind.
  /// [sizeDisk] Volume size
  ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk({
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

  factory ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk.fromMap(Map<String, dynamic> map) {
    return ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk(
      description: map['description'] == null ? null : map['description'] as String,
      kind: map['kind'] as String,
      sizeDisk: map['sizeDisk'] as String,
    );
  }
}

