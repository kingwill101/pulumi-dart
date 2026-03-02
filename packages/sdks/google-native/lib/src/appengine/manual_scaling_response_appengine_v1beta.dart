// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
class ManualScalingResponseAppengineV1beta {
  /// Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https://cloud.google.com/appengine/docs/python/modules/functions) set_num_instances() function.
  final pulumi.Input<int> instances;

  /// Creates a new [ManualScalingResponseAppengineV1beta].
  /// [instances] Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https://cloud.google.com/appengine/docs/python/modules/functions) set_num_instances() function.
  ManualScalingResponseAppengineV1beta({
    required this.instances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': instances,
    };
  }

  factory ManualScalingResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ManualScalingResponseAppengineV1beta(
      instances: (map['instances'] as int).input(),
    );
  }
}

