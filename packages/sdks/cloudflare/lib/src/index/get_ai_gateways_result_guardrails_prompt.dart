// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewaysResultGuardrailsPrompt {
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> p1;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s1;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s10;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s11;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s12;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s13;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s2;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s3;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s4;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s5;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s6;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s7;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s8;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String> s9;

  /// Creates a new [GetAiGatewaysResultGuardrailsPrompt].
  /// [p1] Available values: "FLAG", "BLOCK".
  /// [s1] Available values: "FLAG", "BLOCK".
  /// [s10] Available values: "FLAG", "BLOCK".
  /// [s11] Available values: "FLAG", "BLOCK".
  /// [s12] Available values: "FLAG", "BLOCK".
  /// [s13] Available values: "FLAG", "BLOCK".
  /// [s2] Available values: "FLAG", "BLOCK".
  /// [s3] Available values: "FLAG", "BLOCK".
  /// [s4] Available values: "FLAG", "BLOCK".
  /// [s5] Available values: "FLAG", "BLOCK".
  /// [s6] Available values: "FLAG", "BLOCK".
  /// [s7] Available values: "FLAG", "BLOCK".
  /// [s8] Available values: "FLAG", "BLOCK".
  /// [s9] Available values: "FLAG", "BLOCK".
  const GetAiGatewaysResultGuardrailsPrompt({
    required this.p1,
    required this.s1,
    required this.s10,
    required this.s11,
    required this.s12,
    required this.s13,
    required this.s2,
    required this.s3,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s7,
    required this.s8,
    required this.s9,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'p1': p1,
      's1': s1,
      's10': s10,
      's11': s11,
      's12': s12,
      's13': s13,
      's2': s2,
      's3': s3,
      's4': s4,
      's5': s5,
      's6': s6,
      's7': s7,
      's8': s8,
      's9': s9,
    };
  }

  factory GetAiGatewaysResultGuardrailsPrompt.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultGuardrailsPrompt(
      p1: pulumi.Input.fromValue(map['p1'] as String),
      s1: pulumi.Input.fromValue(map['s1'] as String),
      s10: pulumi.Input.fromValue(map['s10'] as String),
      s11: pulumi.Input.fromValue(map['s11'] as String),
      s12: pulumi.Input.fromValue(map['s12'] as String),
      s13: pulumi.Input.fromValue(map['s13'] as String),
      s2: pulumi.Input.fromValue(map['s2'] as String),
      s3: pulumi.Input.fromValue(map['s3'] as String),
      s4: pulumi.Input.fromValue(map['s4'] as String),
      s5: pulumi.Input.fromValue(map['s5'] as String),
      s6: pulumi.Input.fromValue(map['s6'] as String),
      s7: pulumi.Input.fromValue(map['s7'] as String),
      s8: pulumi.Input.fromValue(map['s8'] as String),
      s9: pulumi.Input.fromValue(map['s9'] as String),
    );
  }
}
