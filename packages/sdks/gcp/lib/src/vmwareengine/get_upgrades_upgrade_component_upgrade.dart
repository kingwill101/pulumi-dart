// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeComponentUpgrade {
  /// The type of vmware component being upgraded.
  final pulumi.Input<String> componentType;
  /// Component's upgrade state.
  final pulumi.Input<String> state;

  /// Creates a new [GetUpgradesUpgradeComponentUpgrade].
  /// [componentType] The type of vmware component being upgraded.
  /// [state] Component's upgrade state.
  const GetUpgradesUpgradeComponentUpgrade({
    required this.componentType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentType': componentType,
      'state': state,
    };
  }

  factory GetUpgradesUpgradeComponentUpgrade.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeComponentUpgrade(
      componentType: pulumi.Input.fromValue(map['componentType'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
