// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectIntelligenceConfigEffectiveIntelligenceConfig {
  /// (Output)
  /// The `StorageIntelligence` edition that is applicable for the resource.
  final pulumi.Input<String?>? effectiveEdition;
  /// (Output)
  /// The Intelligence config resource that is applied for the target resource.
  final pulumi.Input<String?>? intelligenceConfig;

  /// Creates a new [ControlProjectIntelligenceConfigEffectiveIntelligenceConfig].
  /// [effectiveEdition] (Output)
  /// [intelligenceConfig] (Output)
  const ControlProjectIntelligenceConfigEffectiveIntelligenceConfig({
    this.effectiveEdition,
    this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveEdition': ?effectiveEdition,
      'intelligenceConfig': ?intelligenceConfig,
    };
  }

  factory ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: (() { final guardedValue = map['effectiveEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intelligenceConfig: (() { final guardedValue = map['intelligenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
