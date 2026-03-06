// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloBasicSliLatency {
  /// A duration string, e.g. 10s.
  /// Good service is defined to be the count of requests made to
  /// this service that return in no more than threshold.
  final pulumi.Input<String> threshold;

  /// Creates a new [SloBasicSliLatency].
  /// [threshold] A duration string, e.g. 10s.
  const SloBasicSliLatency({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory SloBasicSliLatency.fromMap(Map<String, dynamic> map) {
    return SloBasicSliLatency(
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}

