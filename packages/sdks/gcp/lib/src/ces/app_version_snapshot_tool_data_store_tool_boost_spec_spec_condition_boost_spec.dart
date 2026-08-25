// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec_boost_control_spec.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec {
  /// (Output)
  /// Strength of the boost, which should be in [-1, 1]. Negative boost means
  /// demotion. Default is 0.0.
  /// Setting to 1.0 gives the suggestions a big promotion. However, it does
  /// not necessarily mean that the top result will be a boosted suggestion.
  /// Setting to -1.0 gives the suggestions a big demotion. However, other
  /// suggestions that are relevant might still be shown.
  /// Setting to 0.0 means no boost applied. The boosting condition is
  /// ignored.
  final pulumi.Input<double?>? boost;
  /// (Output)
  /// Specification for custom ranking based on customer specified attribute
  /// value. It provides more controls for customized ranking than the simple
  /// (condition, boost) combination above.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec>?>? boostControlSpecs;
  /// (Output)
  /// An expression which specifies a boost condition. The syntax is the same
  /// as filter expression syntax. Currently, the only supported condition is
  /// a list of BCP-47 lang codes.
  /// Example: To boost suggestions in languages en or fr:
  /// (lang_code: ANY("en", "fr"))
  final pulumi.Input<String?>? condition;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec].
  /// [boost] (Output)
  /// [boostControlSpecs] (Output)
  /// [condition] (Output)
  const AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec({
    this.boost,
    this.boostControlSpecs,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boost': ?boost,
      'boostControlSpecs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec>, List<Map<String, dynamic>>>(boostControlSpecs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec(
      boost: (() { final guardedValue = map['boost']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      boostControlSpecs: (() { final guardedValue = map['boostControlSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
