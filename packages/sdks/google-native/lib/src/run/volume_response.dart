// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_volume_source_response.dart';
import 'empty_dir_volume_source_response.dart';
import 'secret_volume_source_response.dart';

/// Volume represents a named volume in a container.
class VolumeResponse {
  /// Not supported in Cloud Run.
  final pulumi.Input<ConfigMapVolumeSourceResponse> configMap;
  /// Ephemeral storage used as a shared volume.
  final pulumi.Input<EmptyDirVolumeSourceResponse> emptyDir;
  /// Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  final pulumi.Input<String> name;
  /// The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  final pulumi.Input<SecretVolumeSourceResponse> secret;

  /// Creates a new [VolumeResponse].
  /// [configMap] Not supported in Cloud Run.
  /// [emptyDir] Ephemeral storage used as a shared volume.
  /// [name] Volume's name. In Cloud Run Fully Managed, the name 'cloudsql' is reserved.
  /// [secret] The secret's value will be presented as the content of a file whose name is defined in the item path. If no items are defined, the name of the file is the secretName.
  VolumeResponse({
    required this.configMap,
    required this.emptyDir,
    required this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap': pulumi.Input.mapInputValue<ConfigMapVolumeSourceResponse, Map<String, dynamic>>(configMap, (value) => value.toMap()),
      'emptyDir': pulumi.Input.mapInputValue<EmptyDirVolumeSourceResponse, Map<String, dynamic>>(emptyDir, (value) => value.toMap()),
      'name': name,
      'secret': pulumi.Input.mapInputValue<SecretVolumeSourceResponse, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory VolumeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeResponse(
      configMap: pulumi.Input.fromValue(ConfigMapVolumeSourceResponse.fromMap((map['configMap']! as Map).cast<String, dynamic>())),
      emptyDir: pulumi.Input.fromValue(EmptyDirVolumeSourceResponse.fromMap((map['emptyDir']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: pulumi.Input.fromValue(SecretVolumeSourceResponse.fromMap((map['secret']! as Map).cast<String, dynamic>())),
    );
  }
}

