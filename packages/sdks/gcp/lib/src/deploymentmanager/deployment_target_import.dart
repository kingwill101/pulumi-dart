// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentTargetImport {
  /// The full contents of the template that you want to import.
  final pulumi.Input<String>? content;

  /// The name of the template to import, as declared in the YAML
  /// configuration.
  final pulumi.Input<String>? name;

  /// Creates a new [DeploymentTargetImport].
  /// [content] The full contents of the template that you want to import.
  /// [name] The name of the template to import, as declared in the YAML
  DeploymentTargetImport({this.content, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': ?content, 'name': ?name};
  }

  factory DeploymentTargetImport.fromMap(Map<String, dynamic> map) {
    return DeploymentTargetImport(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
