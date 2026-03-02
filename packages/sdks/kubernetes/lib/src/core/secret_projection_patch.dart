// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_to_path_patch.dart';

/// Adapts a secret into a projected volume.
///
/// The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
class SecretProjectionPatch {
  /// items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final pulumi.Input<List<KeyToPathPatch>>? items;
  /// Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final pulumi.Input<String>? name;
  /// optional field specify whether the Secret or its key must be defined
  final pulumi.Input<bool>? optional;

  /// Creates a new [SecretProjectionPatch].
  /// [items] items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  /// [name] Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [optional] optional field specify whether the Secret or its key must be defined
  SecretProjectionPatch({
    this.items,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<KeyToPathPatch>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<KeyToPathPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SecretProjectionPatch.fromMap(Map<String, dynamic> map) {
    return SecretProjectionPatch(
      items: map['items'] == null ? null : (pulumi.Input.decodeList<KeyToPathPatch>(map['items'], (value) => KeyToPathPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      optional: map['optional'] == null ? null : (map['optional'] as bool).input(),
    );
  }
}

