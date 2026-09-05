// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_runtime_handler_features.dart';

/// NodeRuntimeHandler is a set of runtime handler information.
class NodeRuntimeHandler {
  /// Supported features.
  final pulumi.Input<NodeRuntimeHandlerFeatures?>? features;
  /// Runtime handler name. Empty for the default runtime handler.
  final pulumi.Input<String?>? name;

  /// Creates a new [NodeRuntimeHandler].
  /// [features] Supported features.
  /// [name] Runtime handler name. Empty for the default runtime handler.
  const NodeRuntimeHandler({
    this.features,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?pulumi.Input.mapOptionalInputValue<NodeRuntimeHandlerFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory NodeRuntimeHandler.fromMap(Map<String, dynamic> map) {
    return NodeRuntimeHandler(
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeRuntimeHandlerFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
