// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlagshipFlagFilter {
  /// Max items to return (1–200).
  final pulumi.Input<int?>? limit;

  /// Creates a new [GetFlagshipFlagFilter].
  /// [limit] Max items to return (1–200).
  const GetFlagshipFlagFilter({
    this.limit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
    };
  }

  factory GetFlagshipFlagFilter.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagFilter(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
