// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_to_path.dart';

/// Not supported by Cloud Run. Adapts a ConfigMap into a volume. The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths.
class ConfigMapVolumeSource {
  /// (Optional) Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0644. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int>? defaultMode;
  /// (Optional) If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified that is not present in the Secret, the volume setup will error unless it is marked optional.
  final pulumi.Input<List<KeyToPath>>? items;
  /// Name of the config.
  final pulumi.Input<String>? name;
  /// (Optional) Specify whether the Secret or its keys must be defined.
  final pulumi.Input<bool>? optional;

  /// Creates a new [ConfigMapVolumeSource].
  /// [defaultMode] (Optional) Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0644. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [items] (Optional) If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified that is not present in the Secret, the volume setup will error unless it is marked optional.
  /// [name] Name of the config.
  /// [optional] (Optional) Specify whether the Secret or its keys must be defined.
  ConfigMapVolumeSource({
    this.defaultMode,
    this.items,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'items': ?pulumi.Input.mapOptionalInputValue<List<KeyToPath>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<KeyToPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory ConfigMapVolumeSource.fromMap(Map<String, dynamic> map) {
    return ConfigMapVolumeSource(
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode'] as int).input(),
      items: map['items'] == null ? null : (pulumi.Input.decodeList<KeyToPath>(map['items'], (value) => KeyToPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      optional: map['optional'] == null ? null : (map['optional'] as bool).input(),
    );
  }
}

