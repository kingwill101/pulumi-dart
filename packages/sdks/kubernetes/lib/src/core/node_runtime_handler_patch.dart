// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_runtime_handler_features_patch.dart';

/// NodeRuntimeHandler is a set of runtime handler information.
class NodeRuntimeHandlerPatch {
  /// Supported features.
  final pulumi.Input<NodeRuntimeHandlerFeaturesPatch>? features;
  /// Runtime handler name. Empty for the default runtime handler.
  final pulumi.Input<String>? name;

  /// Creates a new [NodeRuntimeHandlerPatch].
  /// [features] Supported features.
  /// [name] Runtime handler name. Empty for the default runtime handler.
  NodeRuntimeHandlerPatch({
    this.features,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?pulumi.Input.mapOptionalInputValue<NodeRuntimeHandlerFeaturesPatch, Map<String, dynamic>>(features, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory NodeRuntimeHandlerPatch.fromMap(Map<String, dynamic> map) {
    return NodeRuntimeHandlerPatch(
      features: map['features'] == null ? null : (NodeRuntimeHandlerFeaturesPatch.fromMap((map['features']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

