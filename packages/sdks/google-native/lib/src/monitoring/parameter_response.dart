// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preview: Parameter value applied to the aggregation function. This is a preview feature and may be subject to change before final release.
class ParameterResponse {
  /// A floating-point parameter value.
  final pulumi.Input<double> doubleValue;
  /// An integer parameter value.
  final pulumi.Input<String> intValue;

  /// Creates a new [ParameterResponse].
  /// [doubleValue] A floating-point parameter value.
  /// [intValue] An integer parameter value.
  ParameterResponse({
    required this.doubleValue,
    required this.intValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doubleValue': doubleValue,
      'intValue': intValue,
    };
  }

  factory ParameterResponse.fromMap(Map<String, dynamic> map) {
    return ParameterResponse(
      doubleValue: (map['doubleValue'] as double).input(),
      intValue: (map['intValue'] as String).input(),
    );
  }
}

