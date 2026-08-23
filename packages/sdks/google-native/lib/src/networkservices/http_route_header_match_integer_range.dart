// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRange {
  /// End of the range (exclusive)
  final pulumi.Input<int>? end;
  /// Start of the range (inclusive)
  final pulumi.Input<int>? start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRange].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  const HttpRouteHeaderMatchIntegerRange({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory HttpRouteHeaderMatchIntegerRange.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRange(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
