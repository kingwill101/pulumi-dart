// ignore_for_file: unused_element, unnecessary_cast


/// AttachedVolume describes a volume attached to a node
class AttachedVolumePatch {
  /// DevicePath represents the device path where the volume should be available
  final String? devicePath;
  /// Name of the attached volume
  final String? name;

  /// Creates a new [AttachedVolumePatch].
  /// [devicePath] DevicePath represents the device path where the volume should be available
  /// [name] Name of the attached volume
  AttachedVolumePatch({
    this.devicePath,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devicePath': ?devicePath,
      'name': ?name,
    };
  }

  factory AttachedVolumePatch.fromMap(Map<String, dynamic> map) {
    return AttachedVolumePatch(
      devicePath: map['devicePath'] == null ? null : map['devicePath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

