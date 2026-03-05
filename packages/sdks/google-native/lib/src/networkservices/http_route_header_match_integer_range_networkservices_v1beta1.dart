// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final pulumi.Input<int>? end;
  /// Start of the range (inclusive)
  final pulumi.Input<int>? start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1({
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'start': ?start,
    };
  }

  factory HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

