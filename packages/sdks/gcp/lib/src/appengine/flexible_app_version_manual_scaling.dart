// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionManualScaling {
  /// Number of instances to assign to the service at the start.
  /// **Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
  /// Modules API set_num_instances() you must use `lifecycle.ignore_changes = ["manual_scaling"[0].instances]` to prevent drift detection.
  final pulumi.Input<int> instances;

  /// Creates a new [FlexibleAppVersionManualScaling].
  /// [instances] Number of instances to assign to the service at the start.
  FlexibleAppVersionManualScaling({required this.instances});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instances': instances};
  }

  factory FlexibleAppVersionManualScaling.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionManualScaling(
      instances: pulumi.Input.fromValue(map['instances'] as int),
    );
  }
}
