// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterGkeAutoUpgradeConfig {
  /// The selected patch mode.
  /// Accepted values are:
  /// * ACCELERATED: Upgrades to the latest available patch version in a given minor and release channel.
  final pulumi.Input<String> patchMode;

  /// Creates a new [ClusterGkeAutoUpgradeConfig].
  /// [patchMode] The selected patch mode.
  ClusterGkeAutoUpgradeConfig({
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchMode': patchMode,
    };
  }

  factory ClusterGkeAutoUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterGkeAutoUpgradeConfig(
      patchMode: pulumi.Input.fromValue(map['patchMode'] as String),
    );
  }
}

