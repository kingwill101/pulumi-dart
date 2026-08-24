// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionPlacement {
  /// Placement mode.
  final pulumi.Input<String> mode;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionPlacement].
  /// [mode] Placement mode.
  const GetPagesProjectsResultDeploymentConfigsProductionPlacement({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionPlacement.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionPlacement(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
