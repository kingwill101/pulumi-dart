// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesApplicationInsights {
  final pulumi.Input<bool>? disableGeneratedRule;

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
      disableGeneratedRule: map['disableGeneratedRule'] == null ? null : (map['disableGeneratedRule'] as bool).input(),
    );
  }
}

