// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewHyperdriveBindings].
  /// [id] Required.
  const PagesProjectDeploymentConfigsPreviewHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
