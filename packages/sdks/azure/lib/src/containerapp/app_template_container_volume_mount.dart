// ignore_for_file: unused_element, unnecessary_cast


class AppTemplateContainerVolumeMount {
  /// The name of the Volume to be mounted in the container.
  final String name;
  /// The path in the container at which to mount this volume.
  final String path;
  /// The sub path of the volume to be mounted in the container.
  final String? subPath;

  /// Creates a new [AppTemplateContainerVolumeMount].
  /// [name] The name of the Volume to be mounted in the container.
  /// [path] The path in the container at which to mount this volume.
  /// [subPath] The sub path of the volume to be mounted in the container.
  AppTemplateContainerVolumeMount({
    required this.name,
    required this.path,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': path,
      'subPath': ?subPath,
    };
  }

  factory AppTemplateContainerVolumeMount.fromMap(Map<String, dynamic> map) {
    return AppTemplateContainerVolumeMount(
      name: map['name'] as String,
      path: map['path'] as String,
      subPath: map['subPath'] == null ? null : map['subPath'] as String,
    );
  }
}

