// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an integer value range.
class HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1 {
  /// End of the range (exclusive)
  final pulumi.Input<int> end;
  /// Start of the range (inclusive)
  final pulumi.Input<int> start;

  /// Creates a new [HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1].
  /// [end] End of the range (exclusive)
  /// [start] Start of the range (inclusive)
  const HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchIntegerRangeResponseNetworkservicesV1beta1(
      end: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['end'])),
      start: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['start'])),
    );
  }
}
