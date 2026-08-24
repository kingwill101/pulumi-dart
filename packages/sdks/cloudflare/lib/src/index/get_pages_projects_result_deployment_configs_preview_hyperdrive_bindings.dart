// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings].
  /// [id] Required.
  const GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
