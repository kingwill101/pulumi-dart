// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Template Spec artifact containing an embedded Azure Resource Manager template for use as a linked template.
class LinkedTemplateArtifactResponse {
  /// A filesystem safe relative path of the artifact.
  final pulumi.Input<String> path;
  /// The Azure Resource Manager template.
  final pulumi.Input<dynamic> template;

  /// Creates a new [LinkedTemplateArtifactResponse].
  /// [path] A filesystem safe relative path of the artifact.
  /// [template] The Azure Resource Manager template.
  LinkedTemplateArtifactResponse({
    required this.path,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'template': template,
    };
  }

  factory LinkedTemplateArtifactResponse.fromMap(Map<String, dynamic> map) {
    return LinkedTemplateArtifactResponse(
      path: (map['path'] as String).input(),
      template: (map['template']).input(),
    );
  }
}

