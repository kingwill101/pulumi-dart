// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings].
  /// [id] Required.
  const GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
