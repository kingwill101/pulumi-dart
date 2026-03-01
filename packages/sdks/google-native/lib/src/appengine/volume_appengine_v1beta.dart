// ignore_for_file: unused_element, unnecessary_cast


/// Volumes mounted within the app container. Only applicable in the App Engine flexible environment.
class VolumeAppengineV1beta {
  /// Unique name for the volume.
  final String? name;
  /// Volume size in gigabytes.
  final double? sizeGb;
  /// Underlying volume type, e.g. 'tmpfs'.
  final String? volumeType;

  /// Creates a new [VolumeAppengineV1beta].
  /// [name] Unique name for the volume.
  /// [sizeGb] Volume size in gigabytes.
  /// [volumeType] Underlying volume type, e.g. 'tmpfs'.
  VolumeAppengineV1beta({
    this.name,
    this.sizeGb,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sizeGb': ?sizeGb,
      'volumeType': ?volumeType,
    };
  }

  factory VolumeAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VolumeAppengineV1beta(
      name: map['name'] == null ? null : map['name'] as String,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as double,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

