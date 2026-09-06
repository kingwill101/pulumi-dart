// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This property defines the creation time based filtering condition. Blob Inventory schema parameter 'Creation-Time' is mandatory with this filter.
class BlobInventoryCreationTimeResponse {
  /// When set the policy filters the objects that are created in the last N days. Where N is an integer value between 1 to 36500.
  final pulumi.Input<int?>? lastNDays;

  /// Creates a new [BlobInventoryCreationTimeResponse].
  /// [lastNDays] When set the policy filters the objects that are created in the last N days. Where N is an integer value between 1 to 36500.
  const BlobInventoryCreationTimeResponse({
    this.lastNDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastNDays': ?lastNDays,
    };
  }

  factory BlobInventoryCreationTimeResponse.fromMap(Map<String, dynamic> map) {
    return BlobInventoryCreationTimeResponse(
      lastNDays: (() { final guardedValue = map['lastNDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
