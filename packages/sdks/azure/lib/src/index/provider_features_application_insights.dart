// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesApplicationInsights {
  final pulumi.Input<bool?>? disableGeneratedRule;

  /// Creates a new [ProviderFeaturesApplicationInsights].
  /// [disableGeneratedRule] Optional.
  const ProviderFeaturesApplicationInsights({
    this.disableGeneratedRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGeneratedRule': ?disableGeneratedRule,
    };
  }

  factory ProviderFeaturesApplicationInsights.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesApplicationInsights(
      disableGeneratedRule: (() { final guardedValue = map['disableGeneratedRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
