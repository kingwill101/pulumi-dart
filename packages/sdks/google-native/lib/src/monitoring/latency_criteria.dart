// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for a latency threshold SLI.
class LatencyCriteria {
  /// Good service is defined to be the count of requests made to this service that return in no more than threshold.
  final pulumi.Input<String>? threshold;

  /// Creates a new [LatencyCriteria].
  /// [threshold] Good service is defined to be the count of requests made to this service that return in no more than threshold.
  const LatencyCriteria({
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': ?threshold,
    };
  }

  factory LatencyCriteria.fromMap(Map<String, dynamic> map) {
    return LatencyCriteria(
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
