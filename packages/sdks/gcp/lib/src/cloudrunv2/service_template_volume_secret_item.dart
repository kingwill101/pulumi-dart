// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final pulumi.Input<int>? mode;
  /// The relative path of the secret in the container.
  final pulumi.Input<String> path;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final pulumi.Input<String>? version;

  /// Creates a new [ServiceTemplateVolumeSecretItem].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  const ServiceTemplateVolumeSecretItem({
    this.mode,
    required this.path,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': path,
      'version': ?version,
    };
  }

  factory ServiceTemplateVolumeSecretItem.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateVolumeSecretItem(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
