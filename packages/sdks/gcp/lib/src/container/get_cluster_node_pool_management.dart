// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolManagement {
  /// Whether the nodes will be automatically repaired. Enabled by default.
  final pulumi.Input<bool> autoRepair;
  /// Whether the nodes will be automatically upgraded. Enabled by default.
  final pulumi.Input<bool> autoUpgrade;

  /// Creates a new [GetClusterNodePoolManagement].
  /// [autoRepair] Whether the nodes will be automatically repaired. Enabled by default.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded. Enabled by default.
  const GetClusterNodePoolManagement({
    required this.autoRepair,
    required this.autoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoUpgrade': autoUpgrade,
    };
  }

  factory GetClusterNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolManagement(
      autoRepair: pulumi.Input.fromValue(map['autoRepair'] as bool),
      autoUpgrade: pulumi.Input.fromValue(map['autoUpgrade'] as bool),
    );
  }
}

