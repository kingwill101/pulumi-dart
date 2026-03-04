// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_volume_source.dart';
import 'empty_dir_volume_source.dart';
import 'secret_volume_source.dart';

/// Volume represents a named volume in a container.
class Volume {
  /// Not supported in Cloud Run.
  final pulumi.Input<ConfigMapVolumeSource>? configMap;

  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<EmptyDirVolumeSource>? emptyDir;

  /// Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  final pulumi.Input<String>? name;

  /// The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  final pulumi.Input<SecretVolumeSource>? secret;

  /// Creates a new [Volume].
  /// [configMap] Not supported in Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [name] Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  /// [secret] The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  Volume({this.configMap, this.emptyDir, this.name, this.secret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigMapVolumeSource,
            Map<String, dynamic>
          >(configMap, (value) => value.toMap()),
      'emptyDir':
          ?pulumi.Input.mapOptionalInputValue<
            EmptyDirVolumeSource,
            Map<String, dynamic>
          >(emptyDir, (value) => value.toMap()),
      'name': ?name,
      'secret':
          ?pulumi.Input.mapOptionalInputValue<
            SecretVolumeSource,
            Map<String, dynamic>
          >(secret, (value) => value.toMap()),
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      configMap: (() {
        final guardedValue = map['configMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigMapVolumeSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      emptyDir: (() {
        final guardedValue = map['emptyDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EmptyDirVolumeSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretVolumeSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
