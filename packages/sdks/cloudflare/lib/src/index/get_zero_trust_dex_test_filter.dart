// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDexTestFilter {
  /// Filter by test type.
  /// Available values: "http", "traceroute".
  final pulumi.Input<String?>? kind;
  /// Filter by test name.
  final pulumi.Input<String?>? testName;

  /// Creates a new [GetZeroTrustDexTestFilter].
  /// [kind] Filter by test type.
  /// [testName] Filter by test name.
  const GetZeroTrustDexTestFilter({
    this.kind,
    this.testName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'testName': ?testName,
    };
  }

  factory GetZeroTrustDexTestFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestFilter(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testName: (() { final guardedValue = map['testName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
