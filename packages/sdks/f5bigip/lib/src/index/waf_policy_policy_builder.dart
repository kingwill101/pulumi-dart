// ignore_for_file: unused_element, unnecessary_cast


class WafPolicyPolicyBuilder {
  /// learning mode setting for policy-builder, possible options: [`automatic`,`disabled`, `manual`]
  final String? learningMode;

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
      learningMode: map['learningMode'] == null ? null : map['learningMode'] as String,
    );
  }
}

