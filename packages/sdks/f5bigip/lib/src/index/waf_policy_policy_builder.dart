// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafPolicyPolicyBuilder {
  /// learning mode setting for policy-builder, possible options: [`automatic`,`disabled`, `manual`]
  final pulumi.Input<String>? learningMode;

  /// Creates a new [WafPolicyPolicyBuilder].
  /// [learningMode] learning mode setting for policy-builder, possible options: [`automatic`,`disabled`, `manual`]
  WafPolicyPolicyBuilder({
    this.learningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'learningMode': ?learningMode,
    };
  }

  factory WafPolicyPolicyBuilder.fromMap(Map<String, dynamic> map) {
    return WafPolicyPolicyBuilder(
      learningMode: map['learningMode'] == null ? null : (map['learningMode'] as String).input(),
    );
  }
}

