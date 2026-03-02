// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterGkeAutoUpgradeConfig {
  /// The selected auto-upgrade patch type. Accepted values are:
  /// * ACCELERATED: Upgrades to the latest available patch version in a given minor and release channel.
  final pulumi.Input<String> patchMode;

  /// Creates a new [GetClusterGkeAutoUpgradeConfig].
  /// [patchMode] The selected auto-upgrade patch type. Accepted values are:
  GetClusterGkeAutoUpgradeConfig({
    required this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchMode': patchMode,
    };
  }

  factory GetClusterGkeAutoUpgradeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterGkeAutoUpgradeConfig(
      patchMode: (map['patchMode'] as String).input(),
    );
  }
}

