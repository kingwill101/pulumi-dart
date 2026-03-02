// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preview: Parameter value applied to the aggregation function. This is a preview feature and may be subject to change before final release.
class Parameter {
  /// A floating-point parameter value.
  final pulumi.Input<double>? doubleValue;
  /// An integer parameter value.
  final pulumi.Input<String>? intValue;

  /// Creates a new [Parameter].
  /// [doubleValue] A floating-point parameter value.
  /// [intValue] An integer parameter value.
  Parameter({
    this.doubleValue,
    this.intValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValue': ?doubleValue,
      'intValue': ?intValue,
    };
  }

  factory Parameter.fromMap(Map<String, dynamic> map) {
    return Parameter(
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue']! as double).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
    );
  }
}

