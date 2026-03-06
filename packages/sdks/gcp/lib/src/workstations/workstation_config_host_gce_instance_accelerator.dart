// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigHostGceInstanceAccelerator {
  /// Number of accelerator cards exposed to the instance.
  final pulumi.Input<int> count;
  /// Type of accelerator resource to attach to the instance, for example, "nvidia-tesla-p100".
  final pulumi.Input<String> type;

  /// Creates a new [WorkstationConfigHostGceInstanceAccelerator].
  /// [count] Number of accelerator cards exposed to the instance.
  /// [type] Type of accelerator resource to attach to the instance, for example, "nvidia-tesla-p100".
  const WorkstationConfigHostGceInstanceAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'type': type,
    };
  }

  factory WorkstationConfigHostGceInstanceAccelerator.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceAccelerator(
      count: pulumi.Input.fromValue(map['count'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

