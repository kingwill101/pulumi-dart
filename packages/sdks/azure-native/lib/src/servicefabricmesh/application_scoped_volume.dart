// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_scoped_volume_creation_parameters_service_fabric_volume_disk.dart';

/// Describes a volume whose lifetime is scoped to the application's lifetime.
class ApplicationScopedVolume {
  /// Describes parameters for creating application-scoped volumes.
  final pulumi.Input<
    ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk
  >
  creationParameters;

  /// The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  final pulumi.Input<String> destinationPath;

  /// Name of the volume being referenced.
  final pulumi.Input<String> name;

  /// The flag indicating whether the volume is read only. Default is 'false'.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [ApplicationScopedVolume].
  /// [creationParameters] Describes parameters for creating application-scoped volumes.
  /// [destinationPath] The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  /// [name] Name of the volume being referenced.
  /// [readOnly] The flag indicating whether the volume is read only. Default is 'false'.
  ApplicationScopedVolume({
    required this.creationParameters,
    required this.destinationPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationParameters':
          pulumi.Input.mapInputValue<
            ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk,
            Map<String, dynamic>
          >(creationParameters, (value) => value.toMap()),
      'destinationPath': destinationPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory ApplicationScopedVolume.fromMap(Map<String, dynamic> map) {
    return ApplicationScopedVolume(
      creationParameters: pulumi.Input.fromValue(
        ApplicationScopedVolumeCreationParametersServiceFabricVolumeDisk.fromMap(
          (map['creationParameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      destinationPath: pulumi.Input.fromValue(map['destinationPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
