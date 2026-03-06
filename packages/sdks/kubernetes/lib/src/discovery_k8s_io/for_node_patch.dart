// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ForNode provides information about which nodes should consume this endpoint.
class ForNodePatch {
  /// name represents the name of the node.
  final pulumi.Input<String>? name;

  /// Creates a new [ForNodePatch].
  /// [name] name represents the name of the node.
  const ForNodePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ForNodePatch.fromMap(Map<String, dynamic> map) {
    return ForNodePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

