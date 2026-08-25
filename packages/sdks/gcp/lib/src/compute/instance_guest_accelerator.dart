// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int> count;
  /// The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource to expose to this instance. E.g. `nvidia-tesla-k80`.
  const InstanceGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'type': type,
    };
  }

  factory InstanceGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return InstanceGuestAccelerator(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
