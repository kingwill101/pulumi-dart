// ignore_for_file: unused_element, unnecessary_cast


/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
class ConfigMapNodeConfigSourcePatch {
  /// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  final String? kubeletConfigKey;
  /// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  final String? name;
  /// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  final String? namespace;
  /// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final String? resourceVersion;
  /// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final String? uid;

  /// Creates a new [ConfigMapNodeConfigSourcePatch].
  /// [kubeletConfigKey] KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  /// [name] Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  /// [namespace] Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  /// [resourceVersion] ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  /// [uid] UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  ConfigMapNodeConfigSourcePatch({
    this.kubeletConfigKey,
    this.name,
    this.namespace,
    this.resourceVersion,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletConfigKey': ?kubeletConfigKey,
      'name': ?name,
      'namespace': ?namespace,
      'resourceVersion': ?resourceVersion,
      'uid': ?uid,
    };
  }

  factory ConfigMapNodeConfigSourcePatch.fromMap(Map<String, dynamic> map) {
    return ConfigMapNodeConfigSourcePatch(
      kubeletConfigKey: map['kubeletConfigKey'] == null ? null : map['kubeletConfigKey'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      resourceVersion: map['resourceVersion'] == null ? null : map['resourceVersion'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

