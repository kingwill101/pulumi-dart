// ignore_for_file: unused_element, unnecessary_cast

import 'application_scoped_volume_creation_parameters_service_fabric_volume_disk_response.dart';

/// Describes a volume whose lifetime is scoped to the application's lifetime.
class ApplicationScopedVolumeResponse {
  /// Describes parameters for creating application-scoped volumes.
  final ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse creationParameters;
  /// The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  final String destinationPath;
  /// Name of the volume being referenced.
  final String name;
  /// The flag indicating whether the volume is read only. Default is 'false'.
  final bool? readOnly;

  /// Creates a new [ApplicationScopedVolumeResponse].
  /// [creationParameters] Describes parameters for creating application-scoped volumes.
  /// [destinationPath] The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  /// [name] Name of the volume being referenced.
  /// [readOnly] The flag indicating whether the volume is read only. Default is 'false'.
  ApplicationScopedVolumeResponse({
    required this.creationParameters,
    required this.destinationPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationParameters': creationParameters.toMap(),
      'destinationPath': destinationPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory ApplicationScopedVolumeResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationScopedVolumeResponse(
      creationParameters: ApplicationScopedVolumeCreationParametersServiceFabricVolumeDiskResponse.fromMap((map['creationParameters'] as Map).cast<String, dynamic>()),
      destinationPath: map['destinationPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

