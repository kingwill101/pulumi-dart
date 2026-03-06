// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int> count;
  /// The accelerator type resource exposed to this instance. E.g. nvidia-tesla-k80.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceFromTemplateGuestAccelerator].
  /// [count] The number of the guest accelerator cards exposed to this instance.
  /// [type] The accelerator type resource exposed to this instance. E.g. nvidia-tesla-k80.
  const InstanceFromTemplateGuestAccelerator({
    required this.count,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'type': type,
    };
  }

  factory InstanceFromTemplateGuestAccelerator.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateGuestAccelerator(
      count: pulumi.Input.fromValue(map['count'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

