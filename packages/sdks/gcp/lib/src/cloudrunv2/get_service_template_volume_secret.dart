// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_volume_secret_item.dart';

class GetServiceTemplateVolumeSecret {
  /// Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting.
  final pulumi.Input<int> defaultMode;
  /// If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
  final pulumi.Input<List<GetServiceTemplateVolumeSecretItem>> items;
  /// The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.
  final pulumi.Input<String> secret;

  /// Creates a new [GetServiceTemplateVolumeSecret].
  /// [defaultMode] Integer representation of mode bits to use on created files by default. Must be a value between 0000 and 0777 (octal), defaulting to 0444. Directories within the path are not affected by this setting.
  /// [items] If unspecified, the volume will expose a file whose name is the secret, relative to VolumeMount.mount_path. If specified, the key will be used as the version to fetch from Cloud Secret Manager and the path will be the name of the file exposed in the volume. When items are defined, they must specify a path and a version.
  /// [secret] The name of the secret in Cloud Secret Manager. Format: {secret} if the secret is in the same project. projects/{project}/secrets/{secret} if the secret is in a different project.
  const GetServiceTemplateVolumeSecret({
    required this.defaultMode,
    required this.items,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': defaultMode,
      'items': pulumi.Input.mapInputValue<List<GetServiceTemplateVolumeSecretItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GetServiceTemplateVolumeSecretItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secret': secret,
    };
  }

  factory GetServiceTemplateVolumeSecret.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateVolumeSecret(
      defaultMode: pulumi.Input.fromValue(map['defaultMode'] as int),
      items: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateVolumeSecretItem>(map['items']!, (value) => GetServiceTemplateVolumeSecretItem.fromMap((value as Map).cast<String, dynamic>()))),
      secret: pulumi.Input.fromValue(map['secret'] as String),
    );
  }
}
