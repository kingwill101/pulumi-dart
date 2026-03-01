// ignore_for_file: unused_element, unnecessary_cast

import 'node_runtime_handler_features.dart';

/// NodeRuntimeHandler is a set of runtime handler information.
class NodeRuntimeHandler {
  /// Supported features.
  final NodeRuntimeHandlerFeatures? features;
  /// Runtime handler name. Empty for the default runtime handler.
  final String? name;

  /// Creates a new [NodeRuntimeHandler].
  /// [features] Supported features.
  /// [name] Runtime handler name. Empty for the default runtime handler.
  NodeRuntimeHandler({
    this.features,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features == null ? null : features!.toMap(),
      'name': ?name,
    };
  }

  factory NodeRuntimeHandler.fromMap(Map<String, dynamic> map) {
    return NodeRuntimeHandler(
      features: map['features'] == null ? null : NodeRuntimeHandlerFeatures.fromMap((map['features'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

