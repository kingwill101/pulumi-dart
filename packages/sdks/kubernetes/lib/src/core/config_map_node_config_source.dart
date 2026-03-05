// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
class ConfigMapNodeConfigSource {
  /// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  final pulumi.Input<String> kubeletConfigKey;
  /// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  final pulumi.Input<String> name;
  /// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  final pulumi.Input<String> namespace;
  /// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final pulumi.Input<String>? resourceVersion;
  /// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final pulumi.Input<String>? uid;

  /// Creates a new [ConfigMapNodeConfigSource].
  /// [kubeletConfigKey] KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  /// [name] Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  /// [namespace] Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  /// [resourceVersion] ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  /// [uid] UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  ConfigMapNodeConfigSource({
    required this.kubeletConfigKey,
    required this.name,
    required this.namespace,
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfigKey': kubeletConfigKey,
      'name': name,
      'namespace': namespace,
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory ConfigMapNodeConfigSource.fromMap(Map<String, dynamic> map) {
    return ConfigMapNodeConfigSource(
      kubeletConfigKey: pulumi.Input.fromValue(map['kubeletConfigKey'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

