// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportFileDeploymentmanagerV2beta {
  /// The contents of the file.
  final pulumi.Input<String>? content;

  /// The name of the file.
  final pulumi.Input<String>? name;

  /// Creates a new [ImportFileDeploymentmanagerV2beta].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFileDeploymentmanagerV2beta({this.content, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': ?content, 'name': ?name};
  }

  factory ImportFileDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ImportFileDeploymentmanagerV2beta(
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
