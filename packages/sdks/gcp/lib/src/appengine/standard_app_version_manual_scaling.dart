// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionManualScaling {
  /// Number of instances to assign to the service at the start.
  /// **Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
  /// Modules API set_num_instances() you must use `lifecycle.ignore_changes = ["manual_scaling"[0].instances]` to prevent drift detection.
  final pulumi.Input<int> instances;

  /// Creates a new [StandardAppVersionManualScaling].
  /// [instances] Number of instances to assign to the service at the start.
  const StandardAppVersionManualScaling({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory StandardAppVersionManualScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionManualScaling(
      instances: pulumi.Input.fromValue(map['instances'] as int),
    );
  }
}

