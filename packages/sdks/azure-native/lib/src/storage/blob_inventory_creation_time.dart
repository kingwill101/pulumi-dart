// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This property defines the creation time based filtering condition. Blob Inventory schema parameter 'Creation-Time' is mandatory with this filter.
class BlobInventoryCreationTime {
  /// When set the policy filters the objects that are created in the last N days. Where N is an integer value between 1 to 36500.
  final pulumi.Input<int>? lastNDays;

  /// Creates a new [BlobInventoryCreationTime].
  /// [lastNDays] When set the policy filters the objects that are created in the last N days. Where N is an integer value between 1 to 36500.
  BlobInventoryCreationTime({this.lastNDays});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lastNDays': ?lastNDays};
  }

  factory BlobInventoryCreationTime.fromMap(Map<String, dynamic> map) {
    return BlobInventoryCreationTime(
      lastNDays: (() {
        final guardedValue = map['lastNDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
