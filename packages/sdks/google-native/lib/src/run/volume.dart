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
  Volume({
    this.configMap,
    this.emptyDir,
    this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapVolumeSource, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'emptyDir': ?pulumi.Input.mapOptionalInputValue<EmptyDirVolumeSource, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'name': ?name,
      'secret': ?pulumi.Input.mapOptionalInputValue<SecretVolumeSource, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      configMap: map['configMap'] == null ? null : (ConfigMapVolumeSource.fromMap((map['configMap'] as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (EmptyDirVolumeSource.fromMap((map['emptyDir'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secret: map['secret'] == null ? null : (SecretVolumeSource.fromMap((map['secret'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

