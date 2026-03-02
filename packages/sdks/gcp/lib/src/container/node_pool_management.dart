// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolManagement {
  /// Whether the nodes will be automatically repaired. Enabled by default.
  final pulumi.Input<bool>? autoRepair;
  /// Whether the nodes will be automatically upgraded. Enabled by default.
  final pulumi.Input<bool>? autoUpgrade;

  /// Creates a new [NodePoolManagement].
  /// [autoRepair] Whether the nodes will be automatically repaired. Enabled by default.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded. Enabled by default.
  NodePoolManagement({
    this.autoRepair,
    this.autoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
      'autoUpgrade': ?autoUpgrade,
    };
  }

  factory NodePoolManagement.fromMap(Map<String, dynamic> map) {
    return NodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : (map['autoRepair']! as bool).input(),
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade']! as bool).input(),
    );
  }
}

