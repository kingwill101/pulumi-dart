// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_node_config_source_patch.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
class NodeConfigSourcePatch {
  /// ConfigMap is a reference to a Node's ConfigMap
  final pulumi.Input<ConfigMapNodeConfigSourcePatch>? configMap;

  /// Creates a new [NodeConfigSourcePatch].
  /// [configMap] ConfigMap is a reference to a Node's ConfigMap
  NodeConfigSourcePatch({
    this.configMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapNodeConfigSourcePatch, Map<String, dynamic>>(configMap, (value) => value.toMap()),
    };
  }

  factory NodeConfigSourcePatch.fromMap(Map<String, dynamic> map) {
    return NodeConfigSourcePatch(
      configMap: map['configMap'] == null ? null : (ConfigMapNodeConfigSourcePatch.fromMap((map['configMap']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

