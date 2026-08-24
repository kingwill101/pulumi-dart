// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings].
  /// [id] Required.
  const GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
