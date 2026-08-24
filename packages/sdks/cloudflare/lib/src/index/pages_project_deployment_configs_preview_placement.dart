// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewPlacement {
  /// Placement mode.
  final pulumi.Input<String?>? mode;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewPlacement].
  /// [mode] Placement mode.
  const PagesProjectDeploymentConfigsPreviewPlacement({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewPlacement.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewPlacement(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
