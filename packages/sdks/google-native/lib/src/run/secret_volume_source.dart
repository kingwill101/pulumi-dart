// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_to_path.dart';

/// A volume representing a secret stored in Google Secret Manager. The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secret_name. The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names.
class SecretVolumeSource {
  /// Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;
  /// A list of secret versions to mount in the volume. If no items are specified, the volume will expose a file with the same name as the secret name. The contents of the file will be the data in the latest version of the secret. If items are specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify both a key and a path.
  final List<KeyToPath>? items;
  /// Not supported by Cloud Run.
  final bool? optional;
  /// The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. Name of the secret in the container's namespace to use.
  final String? secretName;

  /// Creates a new [SecretVolumeSource].
  /// [defaultMode] Integer representation of mode bits to use on created files by default. Must be a value between 01 and 0777 (octal). If 0 or not set, it will default to 0444. Directories within the path are not affected by this setting. Notes * Internally, a umask of 0222 will be applied to any non-zero value. * This is an integer representation of the mode bits. So, the octal integer value should look exactly as the chmod numeric notation with a leading zero. Some examples: for chmod 777 (a=rwx), set to 0777 (octal) or 511 (base-10). For chmod 640 (u=rw,g=r), set to 0640 (octal) or 416 (base-10). For chmod 755 (u=rwx,g=rx,o=rx), set to 0755 (octal) or 493 (base-10). * This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  /// [items] A list of secret versions to mount in the volume. If no items are specified, the volume will expose a file with the same name as the secret name. The contents of the file will be the data in the latest version of the secret. If items are specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify both a key and a path.
  /// [optional] Not supported by Cloud Run.
  /// [secretName] The name of the secret in Cloud Secret Manager. By default, the secret is assumed to be in the same project. If the secret is in another project, you must define an alias. An alias definition has the form: :projects//secrets/. If multiple alias definitions are needed, they must be separated by commas. The alias definitions must be set on the run.googleapis.com/secrets annotation. Name of the secret in the container's namespace to use.
  SecretVolumeSource({
    this.defaultMode,
    this.items,
    this.optional,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'items': ?items == null ? null : pulumi.Input.encodeList<KeyToPath, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'optional': ?optional,
      'secretName': ?secretName,
    };
  }

  factory SecretVolumeSource.fromMap(Map<String, dynamic> map) {
    return SecretVolumeSource(
      defaultMode: map['defaultMode'] == null ? null : map['defaultMode'] as int,
      items: map['items'] == null ? null : pulumi.Input.decodeList<KeyToPath>(map['items'], (value) => KeyToPath.fromMap((value as Map).cast<String, dynamic>())),
      optional: map['optional'] == null ? null : map['optional'] as bool,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

