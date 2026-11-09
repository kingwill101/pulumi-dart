// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomOriginTrustStoreFilter {
  /// Limit to the number of records returned.
  final pulumi.Input<int?>? limit;
  /// Offset the results.
  final pulumi.Input<int?>? offset;

  /// Creates a new [GetCustomOriginTrustStoreFilter].
  /// [limit] Limit to the number of records returned.
  /// [offset] Offset the results.
  const GetCustomOriginTrustStoreFilter({
    this.limit,
    this.offset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'offset': ?offset,
    };
  }

  factory GetCustomOriginTrustStoreFilter.fromMap(Map<String, dynamic> map) {
    return GetCustomOriginTrustStoreFilter(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
