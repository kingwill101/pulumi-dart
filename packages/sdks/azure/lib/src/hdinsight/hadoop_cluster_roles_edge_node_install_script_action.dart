// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterRolesEdgeNodeInstallScriptAction {
  /// The name of the install script action.
  final pulumi.Input<String> name;
  /// The parameters for the script.
  final pulumi.Input<String>? parameters;
  /// The URI pointing to the script to run during the installation of the edge node.
  final pulumi.Input<String> uri;

  /// Creates a new [HadoopClusterRolesEdgeNodeInstallScriptAction].
  /// [name] The name of the install script action.
  /// [parameters] The parameters for the script.
  /// [uri] The URI pointing to the script to run during the installation of the edge node.
  HadoopClusterRolesEdgeNodeInstallScriptAction({
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

  factory HadoopClusterRolesEdgeNodeInstallScriptAction.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesEdgeNodeInstallScriptAction(
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

