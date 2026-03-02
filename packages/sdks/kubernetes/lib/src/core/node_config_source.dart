// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_map_node_config_source.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
class NodeConfigSource {
  /// ConfigMap is a reference to a Node's ConfigMap
  final pulumi.Input<ConfigMapNodeConfigSource>? configMap;

  /// Creates a new [NodeConfigSource].
  /// [configMap] ConfigMap is a reference to a Node's ConfigMap
  NodeConfigSource({
    this.configMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMap': ?pulumi.Input.mapOptionalInputValue<ConfigMapNodeConfigSource, Map<String, dynamic>>(configMap, (value) => value.toMap()),
    };
  }

  factory NodeConfigSource.fromMap(Map<String, dynamic> map) {
    return NodeConfigSource(
      configMap: map['configMap'] == null ? null : (ConfigMapNodeConfigSource.fromMap((map['configMap']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

