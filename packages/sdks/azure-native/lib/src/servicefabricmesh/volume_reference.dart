// ignore_for_file: unused_element, unnecessary_cast


/// Describes a reference to a volume resource.
class VolumeReference {
  /// The path within the container at which the volume should be mounted. Only valid path characters are allowed.
  final String destinationPath;
  /// Name of the volume being referenced.
  final String name;
  /// The flag indicating whether the volume is read only. Default is 'false'.
  final bool? readOnly;

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
      destinationPath: map['destinationPath'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

