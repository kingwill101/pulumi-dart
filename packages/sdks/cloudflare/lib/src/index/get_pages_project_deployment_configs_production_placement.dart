// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionPlacement {
  /// Placement mode.
  final pulumi.Input<String> mode;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionPlacement].
  /// [mode] Placement mode.
  const GetPagesProjectDeploymentConfigsProductionPlacement({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionPlacement.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionPlacement(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
