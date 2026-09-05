// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterRolesZookeeperNodeScriptAction {
  /// The name of the script action.
  final pulumi.Input<String> name;
  /// The parameters for the script provided.
  final pulumi.Input<String?>? parameters;
  /// The URI to the script.
  final pulumi.Input<String> uri;

  /// Creates a new [InteractiveQueryClusterRolesZookeeperNodeScriptAction].
  /// [name] The name of the script action.
  /// [parameters] The parameters for the script provided.
  /// [uri] The URI to the script.
  const InteractiveQueryClusterRolesZookeeperNodeScriptAction({
    required this.name,
    this.parameters,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
      'uri': uri,
    };
  }

  factory InteractiveQueryClusterRolesZookeeperNodeScriptAction.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterRolesZookeeperNodeScriptAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
