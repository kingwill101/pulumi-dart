// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystraceSetupResponse {
  /// Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  final pulumi.Input<int> durationSeconds;

  /// Creates a new [SystraceSetupResponse].
  /// [durationSeconds] Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.
  const SystraceSetupResponse({
    required this.durationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationSeconds': durationSeconds,
    };
  }

  factory SystraceSetupResponse.fromMap(Map<String, dynamic> map) {
    return SystraceSetupResponse(
      durationSeconds: pulumi.Input.fromValue(map['durationSeconds'] as int),
    );
  }
}
