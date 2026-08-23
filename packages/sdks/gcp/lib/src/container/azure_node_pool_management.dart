// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final pulumi.Input<bool>? autoRepair;

  /// Creates a new [AzureNodePoolManagement].
  /// [autoRepair] Optional. Whether or not the nodes will be automatically repaired.
  const AzureNodePoolManagement({
    this.autoRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
    };
  }

  factory AzureNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolManagement(
      autoRepair: (() { final guardedValue = map['autoRepair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
