// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies Data Fusion accelerators for an instance.
class AcceleratorResponse {
  /// The type of an accelator for a CDF instance.
  final pulumi.Input<String> acceleratorType;
  /// The state of the accelerator.
  final pulumi.Input<String> state;

  /// Creates a new [AcceleratorResponse].
  /// [acceleratorType] The type of an accelator for a CDF instance.
  /// [state] The state of the accelerator.
  const AcceleratorResponse({
    required this.acceleratorType,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': acceleratorType,
      'state': state,
    };
  }

  factory AcceleratorResponse.fromMap(Map<String, dynamic> map) {
    return AcceleratorResponse(
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

