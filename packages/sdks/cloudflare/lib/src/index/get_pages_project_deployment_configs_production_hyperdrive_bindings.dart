// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionHyperdriveBindings {
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionHyperdriveBindings].
  /// [id] Required.
  const GetPagesProjectDeploymentConfigsProductionHyperdriveBindings({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionHyperdriveBindings.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionHyperdriveBindings(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
