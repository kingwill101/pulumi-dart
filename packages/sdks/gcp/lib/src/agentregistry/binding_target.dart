// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BindingTarget {
  /// The identifier of the target Agent, MCP Server, or Endpoint. Format:
  /// * `urn:agent:{publisher}:{namespace}:{name}`
  /// * `urn:mcp:{publisher}:{namespace}:{name}`
  /// * `urn:endpoint:{publisher}:{namespace}:{name}`
  final pulumi.Input<String> identifier;

  /// Creates a new [BindingTarget].
  /// [identifier] The identifier of the target Agent, MCP Server, or Endpoint. Format:
  const BindingTarget({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
    };
  }

  factory BindingTarget.fromMap(Map<String, dynamic> map) {
    return BindingTarget(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
