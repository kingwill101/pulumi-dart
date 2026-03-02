// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a reference to a volume resource.
class VolumeReferenceResponse {
  /// The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  final pulumi.Input<String> destinationPath;
  /// Name of the volume being referenced.
  final pulumi.Input<String> name;
  /// The flag indicating whether the volume is read only. Default is 'false'.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [VolumeReferenceResponse].
  /// [destinationPath] The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  /// [name] Name of the volume being referenced.
  /// [readOnly] The flag indicating whether the volume is read only. Default is 'false'.
  VolumeReferenceResponse({
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

  factory VolumeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VolumeReferenceResponse(
      destinationPath: (map['destinationPath'] as String).input(),
      name: (map['name'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly']! as bool).input(),
    );
  }
}

