// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOriginCaCertificateFilter {
  /// Limit to the number of records returned.
  final pulumi.Input<int?>? limit;
  /// Offset the results.
  final pulumi.Input<int?>? offset;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetOriginCaCertificateFilter].
  /// [limit] Limit to the number of records returned.
  /// [offset] Offset the results.
  /// [zoneId] Identifier.
  const GetOriginCaCertificateFilter({
    this.limit,
    this.offset,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'offset': ?offset,
      'zoneId': zoneId,
    };
  }

  factory GetOriginCaCertificateFilter.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificateFilter(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
