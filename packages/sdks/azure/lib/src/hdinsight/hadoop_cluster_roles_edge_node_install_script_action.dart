// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterRolesEdgeNodeInstallScriptAction {
  /// The name of the install script action.
  final String name;
  /// The parameters for the script.
  final String? parameters;
  /// The URI pointing to the script to run during the installation of the edge node.
  final String uri;

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
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      uri: map['uri'] as String,
    );
  }
}

