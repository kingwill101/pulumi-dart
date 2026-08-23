// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerRetryPolicy {
  /// The maximum number of delivery attempts for any message. The only valid
  /// value is 1.
  final pulumi.Input<int>? maxAttempts;

  /// Creates a new [TriggerRetryPolicy].
  /// [maxAttempts] The maximum number of delivery attempts for any message. The only valid
  const TriggerRetryPolicy({
    this.maxAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': ?maxAttempts,
    };
  }

  factory TriggerRetryPolicy.fromMap(Map<String, dynamic> map) {
    return TriggerRetryPolicy(
      maxAttempts: (() { final guardedValue = map['maxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
