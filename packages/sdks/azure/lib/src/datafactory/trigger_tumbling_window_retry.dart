// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerTumblingWindowRetry {
  /// The maximum retry attempts if the pipeline run failed.
  final pulumi.Input<int> count;
  /// The Interval in seconds between each retry if the pipeline run failed. Defaults to `30`.
  final pulumi.Input<int>? interval;

  /// Creates a new [TriggerTumblingWindowRetry].
  /// [count] The maximum retry attempts if the pipeline run failed.
  /// [interval] The Interval in seconds between each retry if the pipeline run failed. Defaults to `30`.
  const TriggerTumblingWindowRetry({
    required this.count,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'interval': ?interval,
    };
  }

  factory TriggerTumblingWindowRetry.fromMap(Map<String, dynamic> map) {
    return TriggerTumblingWindowRetry(
      count: pulumi.Input.fromValue(map['count'] as int),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
