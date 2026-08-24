// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewPlacement {
  /// Placement mode.
  final pulumi.Input<String> mode;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewPlacement].
  /// [mode] Placement mode.
  const GetPagesProjectDeploymentConfigsPreviewPlacement({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewPlacement.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewPlacement(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
