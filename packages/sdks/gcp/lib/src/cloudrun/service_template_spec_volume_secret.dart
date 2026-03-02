// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_volume_secret_item.dart';

class ServiceTemplateSpecVolumeSecret {
  /// Mode bits to use on created files by default. Must be a value between 0000
  /// and 0777. Defaults to 0644. Directories within the path are not affected by
  /// this setting. This might be in conflict with other options that affect the
  /// file mode, like fsGroup, and the result can be other mode bits set.
  final pulumi.Input<int>? defaultMode;
  /// If unspecified, the volume will expose a file whose name is the
  /// secret_name.
  /// If specified, the key will be used as the version to fetch from Cloud
  /// Secret Manager and the path will be the name of the file exposed in the
  /// volume. When items are defined, they must specify a key and a path.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecVolumeSecretItem>>? items;
  /// The name of the secret in Cloud Secret Manager. By default, the secret
  /// is assumed to be in the same project.
  /// If the secret is in another project, you must define an alias.
  /// An alias definition has the form:
  /// {alias}:projects/{project-id|project-number}/secrets/{secret-name}.
  /// If multiple alias definitions are needed, they must be separated by
  /// commas.
  /// The alias definitions must be set on the run.googleapis.com/secrets
  /// annotation.
  final pulumi.Input<String> secretName;

  /// Creates a new [ServiceTemplateSpecVolumeSecret].
  /// [defaultMode] Mode bits to use on created files by default. Must be a value between 0000
  /// [items] If unspecified, the volume will expose a file whose name is the
  /// [secretName] The name of the secret in Cloud Secret Manager. By default, the secret
  ServiceTemplateSpecVolumeSecret({
    this.defaultMode,
    this.items,
    required this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMode': ?defaultMode,
      'items': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecVolumeSecretItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ServiceTemplateSpecVolumeSecretItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretName': secretName,
    };
  }

  factory ServiceTemplateSpecVolumeSecret.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecVolumeSecret(
      defaultMode: map['defaultMode'] == null ? null : (map['defaultMode'] as int).input(),
      items: map['items'] == null ? null : (pulumi.Input.decodeList<ServiceTemplateSpecVolumeSecretItem>(map['items'], (value) => ServiceTemplateSpecVolumeSecretItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretName: (map['secretName'] as String).input(),
    );
  }
}

