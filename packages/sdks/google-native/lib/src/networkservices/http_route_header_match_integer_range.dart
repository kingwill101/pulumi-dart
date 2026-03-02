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
  HttpRouteHeaderMatchIntegerRange({
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
      end: map['end'] == null ? null : (map['end']! as int).input(),
      start: map['start'] == null ? null : (map['start']! as int).input(),
    );
  }
}

