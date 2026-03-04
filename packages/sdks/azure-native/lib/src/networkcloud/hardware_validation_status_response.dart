// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HardwareValidationStatusResponse {
  /// The timestamp of the hardware validation execution.
  final pulumi.Input<String> lastValidationTime;

  /// The outcome of the hardware validation.
  final pulumi.Input<String> result;

  /// Creates a new [HardwareValidationStatusResponse].
  /// [lastValidationTime] The timestamp of the hardware validation execution.
  /// [result] The outcome of the hardware validation.
  HardwareValidationStatusResponse({
    required this.lastValidationTime,
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastValidationTime': lastValidationTime,
      'result': result,
    };
  }

  factory HardwareValidationStatusResponse.fromMap(Map<String, dynamic> map) {
    return HardwareValidationStatusResponse(
      lastValidationTime: pulumi.Input.fromValue(
        map['lastValidationTime'] as String,
      ),
      result: pulumi.Input.fromValue(map['result'] as String),
    );
  }
}
