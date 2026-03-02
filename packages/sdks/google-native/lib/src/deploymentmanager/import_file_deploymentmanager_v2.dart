// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImportFileDeploymentmanagerV2 {
  /// The contents of the file.
  final pulumi.Input<String>? content;
  /// The name of the file.
  final pulumi.Input<String>? name;

  /// Creates a new [ImportFileDeploymentmanagerV2].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFileDeploymentmanagerV2({
    this.content,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'name': ?name,
    };
  }

  factory ImportFileDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return ImportFileDeploymentmanagerV2(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

