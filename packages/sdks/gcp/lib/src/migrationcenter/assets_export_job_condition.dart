// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetsExportJobCondition {
  /// Assets filter, supports the same syntax as asset listing.
  final pulumi.Input<String?>? filter;

  /// Creates a new [AssetsExportJobCondition].
  /// [filter] Assets filter, supports the same syntax as asset listing.
  const AssetsExportJobCondition({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
    };
  }

  factory AssetsExportJobCondition.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobCondition(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
