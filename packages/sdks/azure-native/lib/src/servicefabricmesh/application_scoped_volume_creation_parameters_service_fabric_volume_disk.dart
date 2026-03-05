// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes parameters for creating application-scoped volumes provided by Service Fabric Volume Disks
class ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk {
  /// User readable description of the volume.
  final pulumi.Input<String>? description;
  /// Specifies the application-scoped volume kind.
  /// Expected value is 'ServiceFabricVolumeDisk'.
  final pulumi.Input<String> kind;
  /// Volume size
  final pulumi.Input<String> sizeDisk;

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      sizeDisk: pulumi.Input.fromValue(map['sizeDisk'] as String),
    );
  }
}

