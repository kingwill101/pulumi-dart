// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WasmPluginVersion {
  /// (Output)
  /// Output only. The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Optional. A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Output only. The resolved digest for the image specified in the image field. The digest is resolved during the creation of WasmPluginVersion resource.
  /// This field holds the digest value, regardless of whether a tag or digest was originally specified in the image field.
  final pulumi.Input<String>? imageDigest;
  /// Optional. URI of the container image containing the plugin, stored in the Artifact Registry. When a new WasmPluginVersion resource is created, the digest of the container image is saved in the imageDigest field.
  /// When downloading an image, the digest value is used instead of an image tag.
  final pulumi.Input<String>? imageUri;
  /// Optional. Set of labels associated with the WasmPlugin resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A base64-encoded string containing the configuration for the plugin. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// When a new WasmPluginVersion resource is created, the digest of the contents is saved in the pluginConfigDigest field.
  /// Conflics with pluginConfigUri.
  final pulumi.Input<String>? pluginConfigData;
  /// (Output)
  /// Output only. This field holds the digest (usually checksum) value for the plugin configuration.
  /// The value is calculated based on the contents of pluginConfigData or the container image defined by the pluginConfigUri field.
  final pulumi.Input<String>? pluginConfigDigest;
  /// URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// The container image must contain only a single file with the name plugin.config.
  /// When a new WasmPluginVersion resource is created, the digest of the container image is saved in the pluginConfigDigest field.
  /// Conflics with pluginConfigData.
  final pulumi.Input<String>? pluginConfigUri;
  /// (Output)
  /// Output only. The timestamp when the resource was updated.
  final pulumi.Input<String>? updateTime;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> versionName;

  /// Creates a new [WasmPluginVersion].
  /// [createTime] (Output)
  /// [description] Optional. A human-readable description of the resource.
  /// [imageDigest] (Output)
  /// [imageUri] Optional. URI of the container image containing the plugin, stored in the Artifact Registry. When a new WasmPluginVersion resource is created, the digest of the container image is saved in the imageDigest field.
  /// [labels] Optional. Set of labels associated with the WasmPlugin resource.
  /// [pluginConfigData] A base64-encoded string containing the configuration for the plugin. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// [pluginConfigDigest] (Output)
  /// [pluginConfigUri] URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to the plugin at runtime through the ON_CONFIGURE callback.
  /// [updateTime] (Output)
  /// [versionName] The identifier for this object. Format specified above.
  WasmPluginVersion({
    this.createTime,
    this.description,
    this.imageDigest,
    this.imageUri,
    this.labels,
    this.pluginConfigData,
    this.pluginConfigDigest,
    this.pluginConfigUri,
    this.updateTime,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'imageDigest': ?imageDigest,
      'imageUri': ?imageUri,
      'labels': ?labels,
      'pluginConfigData': ?pluginConfigData,
      'pluginConfigDigest': ?pluginConfigDigest,
      'pluginConfigUri': ?pluginConfigUri,
      'updateTime': ?updateTime,
      'versionName': versionName,
    };
  }

  factory WasmPluginVersion.fromMap(Map<String, dynamic> map) {
    return WasmPluginVersion(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      imageDigest: map['imageDigest'] == null ? null : (map['imageDigest']! as String).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      pluginConfigData: map['pluginConfigData'] == null ? null : (map['pluginConfigData']! as String).input(),
      pluginConfigDigest: map['pluginConfigDigest'] == null ? null : (map['pluginConfigDigest']! as String).input(),
      pluginConfigUri: map['pluginConfigUri'] == null ? null : (map['pluginConfigUri']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      versionName: (map['versionName'] as String).input(),
    );
  }
}

