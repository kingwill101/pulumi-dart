// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewPlacement {
  /// Placement mode.
  final pulumi.Input<String> mode;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewPlacement].
  /// [mode] Placement mode.
  const GetPagesProjectsResultDeploymentConfigsPreviewPlacement({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewPlacement.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewPlacement(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
