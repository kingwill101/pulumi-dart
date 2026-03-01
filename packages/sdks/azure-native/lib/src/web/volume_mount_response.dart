// ignore_for_file: unused_element, unnecessary_cast


class VolumeMountResponse {
  /// Target path on the container where volume is mounted on
  final String containerMountPath;
  /// Config Data to be mounted on the volume
  final String? data;
  /// Boolean to specify if the mount is read only on the container
  final bool? readOnly;
  /// Sub path in the volume where volume is mounted from.
  final String volumeSubPath;

  /// Creates a new [VolumeMountResponse].
  /// [containerMountPath] Target path on the container where volume is mounted on
  /// [data] Config Data to be mounted on the volume
  /// [readOnly] Boolean to specify if the mount is read only on the container
  /// [volumeSubPath] Sub path in the volume where volume is mounted from.
  VolumeMountResponse({
    required this.containerMountPath,
    this.data,
    this.readOnly,
    required this.volumeSubPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerMountPath': containerMountPath,
      'data': ?data,
      'readOnly': ?readOnly,
      'volumeSubPath': volumeSubPath,
    };
  }

  factory VolumeMountResponse.fromMap(Map<String, dynamic> map) {
    return VolumeMountResponse(
      containerMountPath: map['containerMountPath'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      volumeSubPath: map['volumeSubPath'] as String,
    );
  }
}

