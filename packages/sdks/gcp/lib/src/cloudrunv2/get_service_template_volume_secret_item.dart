// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final pulumi.Input<int> mode;
  /// The relative path of the secret in the container.
  final pulumi.Input<String> path;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final pulumi.Input<String> version;

  /// Creates a new [GetServiceTemplateVolumeSecretItem].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  const GetServiceTemplateVolumeSecretItem({
    required this.mode,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'path': path,
      'version': version,
    };
  }

  factory GetServiceTemplateVolumeSecretItem.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeSecretItem(
      mode: pulumi.Input.fromValue(map['mode'] as int),
      path: pulumi.Input.fromValue(map['path'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
