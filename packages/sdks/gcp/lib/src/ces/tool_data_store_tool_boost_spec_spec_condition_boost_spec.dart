// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_boost_spec_spec_condition_boost_spec_boost_control_spec.dart';

class ToolDataStoreToolBoostSpecSpecConditionBoostSpec {
  /// Strength of the boost, which should be in [-1, 1]. Negative boost means
  /// demotion. Default is 0.0.
  /// Setting to 1.0 gives the suggestions a big promotion. However, it does
  /// not necessarily mean that the top result will be a boosted suggestion.
  /// Setting to -1.0 gives the suggestions a big demotion. However, other
  /// suggestions that are relevant might still be shown.
  /// Setting to 0.0 means no boost applied. The boosting condition is
  /// ignored.
  final pulumi.Input<double>? boost;
  /// Specification for custom ranking based on customer specified attribute
  /// value. It provides more controls for customized ranking than the simple
  /// (condition, boost) combination above.
  /// Structure is documented below.
  final pulumi.Input<ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec>? boostControlSpec;
  /// An expression which specifies a boost condition. The syntax is the same
  /// as filter expression syntax. Currently, the only supported condition is
  /// a list of BCP-47 lang codes.
  /// Example: To boost suggestions in languages en or fr:
  /// (lang_code: ANY("en", "fr"))
  final pulumi.Input<String> condition;

  /// Creates a new [ToolDataStoreToolBoostSpecSpecConditionBoostSpec].
  /// [boost] Strength of the boost, which should be in [-1, 1]. Negative boost means
  /// [boostControlSpec] Specification for custom ranking based on customer specified attribute
  /// [condition] An expression which specifies a boost condition. The syntax is the same
  const ToolDataStoreToolBoostSpecSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpec,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boost': ?boost,
      'boostControlSpec': ?pulumi.Input.mapOptionalInputValue<ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec, Map<String, dynamic>>(boostControlSpec, (value) => value.toMap()),
      'condition': condition,
    };
  }

  factory ToolDataStoreToolBoostSpecSpecConditionBoostSpec.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolBoostSpecSpecConditionBoostSpec(
      boost: (() { final guardedValue = map['boost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      boostControlSpec: (() { final guardedValue = map['boostControlSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condition: pulumi.Input.fromValue(map['condition'] as String),
    );
  }
}
