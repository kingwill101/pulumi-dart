// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfidentialCompute {
  /// Setting to Enable or Disable Confidential Compute
  final pulumi.Input<dynamic>? mode;

  /// Creates a new [ConfidentialCompute].
  /// [mode] Setting to Enable or Disable Confidential Compute
  const ConfidentialCompute({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory ConfidentialCompute.fromMap(Map<String, dynamic> map) {
    return ConfidentialCompute(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
