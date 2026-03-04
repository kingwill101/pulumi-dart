// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a volume resource.
class VolumeReference {
  /// The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  final pulumi.Input<String> destinationPath;

  /// Name of the volume being referenced.
  final pulumi.Input<String> name;

  /// The flag indicating whether the volume is read only. Default is 'false'.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [VolumeReference].
  /// [destinationPath] The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  /// [name] Name of the volume being referenced.
  /// [readOnly] The flag indicating whether the volume is read only. Default is 'false'.
  VolumeReference({
    required this.destinationPath,
    required this.name,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPath': destinationPath,
      'name': name,
      'readOnly': ?readOnly,
    };
  }

  factory VolumeReference.fromMap(Map<String, dynamic> map) {
    return VolumeReference(
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
