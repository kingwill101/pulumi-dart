// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [PagesProjectDeploymentConfigsProductionHyperdriveBindings].
  /// [id] Required.
  const PagesProjectDeploymentConfigsProductionHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PagesProjectDeploymentConfigsProductionHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
