// ignore_for_file: unused_element, unnecessary_cast


class FeaturesApplicationInsights {
  final bool? disableGeneratedRule;

  /// Creates a new [FeaturesApplicationInsights].
  /// [disableGeneratedRule] Optional.
  FeaturesApplicationInsights({
    this.disableGeneratedRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGeneratedRule': ?disableGeneratedRule,
    };
  }

  factory FeaturesApplicationInsights.fromMap(Map<String, dynamic> map) {
    return FeaturesApplicationInsights(
      disableGeneratedRule: map['disableGeneratedRule'] == null ? null : map['disableGeneratedRule'] as bool,
    );
  }
}

