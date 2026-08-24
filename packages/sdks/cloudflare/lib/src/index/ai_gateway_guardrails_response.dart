// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayGuardrailsResponse {
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? p1;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s1;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s10;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s11;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s12;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s13;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s2;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s3;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s4;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s5;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s6;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s7;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s8;
  /// Available values: "FLAG", "BLOCK".
  final pulumi.Input<String?>? s9;

  /// Creates a new [AiGatewayGuardrailsResponse].
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
  const AiGatewayGuardrailsResponse({
    this.p1,
    this.s1,
    this.s10,
    this.s11,
    this.s12,
    this.s13,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
    this.s7,
    this.s8,
    this.s9,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'p1': ?p1,
      's1': ?s1,
      's10': ?s10,
      's11': ?s11,
      's12': ?s12,
      's13': ?s13,
      's2': ?s2,
      's3': ?s3,
      's4': ?s4,
      's5': ?s5,
      's6': ?s6,
      's7': ?s7,
      's8': ?s8,
      's9': ?s9,
    };
  }

  factory AiGatewayGuardrailsResponse.fromMap(Map<String, dynamic> map) {
    return AiGatewayGuardrailsResponse(
      p1: (() { final guardedValue = map['p1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s1: (() { final guardedValue = map['s1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s10: (() { final guardedValue = map['s10']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s11: (() { final guardedValue = map['s11']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s12: (() { final guardedValue = map['s12']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s13: (() { final guardedValue = map['s13']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s2: (() { final guardedValue = map['s2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s4: (() { final guardedValue = map['s4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s5: (() { final guardedValue = map['s5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s6: (() { final guardedValue = map['s6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s7: (() { final guardedValue = map['s7']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s8: (() { final guardedValue = map['s8']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s9: (() { final guardedValue = map['s9']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
