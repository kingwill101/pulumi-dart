// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolDataStoreToolModalityConfigGroundingConfig {
  /// Whether grounding is disabled.
  final pulumi.Input<bool>? disabled;
  /// The groundedness threshold of the answer based on the retrieved sources.
  /// The value has a configurable range of [1, 5]. The level is used to
  /// threshold the groundedness of the answer, meaning that all responses with
  /// a groundedness score below the threshold will fall back to returning
  /// relevant snippets only.
  /// For example, a level of 3 means that the groundedness score must be
  /// 3 or higher for the response to be returned.
  final pulumi.Input<double>? groundingLevel;

  /// Creates a new [ToolDataStoreToolModalityConfigGroundingConfig].
  /// [disabled] Whether grounding is disabled.
  /// [groundingLevel] The groundedness threshold of the answer based on the retrieved sources.
  const ToolDataStoreToolModalityConfigGroundingConfig({
    this.disabled,
    this.groundingLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'groundingLevel': ?groundingLevel,
    };
  }

  factory ToolDataStoreToolModalityConfigGroundingConfig.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolModalityConfigGroundingConfig(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groundingLevel: (() { final guardedValue = map['groundingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
