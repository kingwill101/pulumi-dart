// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FileKeySelector selects a key of the env file.
class FileKeySelectorPatch {
  /// The key within the env file. An invalid key will prevent the pod from starting. The keys defined within a source may consist of any printable ASCII characters except '='. During Alpha stage of the EnvFiles feature gate, the key size is limited to 128 characters.
  final pulumi.Input<String?>? key;
  /// Specify whether the file or its key must be defined. If the file or key does not exist, then the env var is not published. If optional is set to true and the specified key does not exist, the environment variable will not be set in the Pod's containers.
  ///
  /// If optional is set to false and the specified key does not exist, an error will be returned during Pod creation.
  final pulumi.Input<bool?>? optional;
  /// The path within the volume from which to select the file. Must be relative and may not contain the '..' path or start with '..'.
  final pulumi.Input<String?>? path;
  /// The name of the volume mount containing the env file.
  final pulumi.Input<String?>? volumeName;

  /// Creates a new [FileKeySelectorPatch].
  /// [key] The key within the env file. An invalid key will prevent the pod from starting. The keys defined within a source may consist of any printable ASCII characters except '='. During Alpha stage of the EnvFiles feature gate, the key size is limited to 128 characters.
  /// [optional] Specify whether the file or its key must be defined. If the file or key does not exist, then the env var is not published. If optional is set to true and the specified key does not exist, the environment variable will not be set in the Pod's containers.
  /// [path] The path within the volume from which to select the file. Must be relative and may not contain the '..' path or start with '..'.
  /// [volumeName] The name of the volume mount containing the env file.
  const FileKeySelectorPatch({
    this.key,
    this.optional,
    this.path,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'optional': ?optional,
      'path': ?path,
      'volumeName': ?volumeName,
    };
  }

  factory FileKeySelectorPatch.fromMap(Map<String, dynamic> map) {
    return FileKeySelectorPatch(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
