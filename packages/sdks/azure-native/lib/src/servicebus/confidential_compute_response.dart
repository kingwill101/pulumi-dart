// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfidentialComputeResponse {
  /// Setting to Enable or Disable Confidential Compute
  final pulumi.Input<String?>? mode;

  /// Creates a new [ConfidentialComputeResponse].
  /// [mode] Setting to Enable or Disable Confidential Compute
  const ConfidentialComputeResponse({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
    };
  }

  factory ConfidentialComputeResponse.fromMap(Map<String, dynamic> map) {
    return ConfidentialComputeResponse(
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
