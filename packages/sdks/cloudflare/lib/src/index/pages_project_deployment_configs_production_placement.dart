// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionPlacement {
  /// Placement mode.
  final pulumi.Input<String?>? mode;

  /// Creates a new [PagesProjectDeploymentConfigsProductionPlacement].
  /// [mode] Placement mode.
  const PagesProjectDeploymentConfigsProductionPlacement({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory PagesProjectDeploymentConfigsProductionPlacement.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionPlacement(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
