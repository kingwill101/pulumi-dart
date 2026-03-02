// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Jupyter configuration for an interactive session.
class JupyterConfigResponse {
  /// Optional. Display name, shown in the Jupyter kernelspec card.
  final pulumi.Input<String> displayName;
  /// Optional. Kernel
  final pulumi.Input<String> kernel;

  /// Creates a new [JupyterConfigResponse].
  /// [displayName] Optional. Display name, shown in the Jupyter kernelspec card.
  /// [kernel] Optional. Kernel
  JupyterConfigResponse({
    required this.displayName,
    required this.kernel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'kernel': kernel,
    };
  }

  factory JupyterConfigResponse.fromMap(Map<String, dynamic> map) {
    return JupyterConfigResponse(
      displayName: (map['displayName'] as String).input(),
      kernel: (map['kernel'] as String).input(),
    );
  }
}

