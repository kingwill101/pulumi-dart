// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final pulumi.Input<bool?>? autoRepair;

  /// Creates a new [AwsNodePoolManagement].
  /// [autoRepair] Optional. Whether or not the nodes will be automatically repaired.
  const AwsNodePoolManagement({
    this.autoRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
    };
  }

  factory AwsNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolManagement(
      autoRepair: (() { final guardedValue = map['autoRepair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
