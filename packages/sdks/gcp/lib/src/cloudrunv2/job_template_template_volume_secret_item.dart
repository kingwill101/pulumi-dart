// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateTemplateVolumeSecretItem {
  /// Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  final pulumi.Input<int>? mode;
  /// The relative path of the secret in the container.
  final pulumi.Input<String> path;
  /// The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  final pulumi.Input<String> version;

  /// Creates a new [JobTemplateTemplateVolumeSecretItem].
  /// [mode] Integer octal mode bits to use on this file, must be a value between 01 and 0777 (octal). If 0 or not set, the Volume's default mode will be used.
  /// [path] The relative path of the secret in the container.
  /// [version] The Cloud Secret Manager secret version. Can be 'latest' for the latest value or an integer for a specific version
  JobTemplateTemplateVolumeSecretItem({
    this.mode,
    required this.path,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'path': path,
      'version': version,
    };
  }

  factory JobTemplateTemplateVolumeSecretItem.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeSecretItem(
      mode: map['mode'] == null ? null : (map['mode'] as int).input(),
      path: (map['path'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

