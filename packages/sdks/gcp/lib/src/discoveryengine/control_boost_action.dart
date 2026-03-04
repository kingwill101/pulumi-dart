// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_boost_action_interpolation_boost_spec.dart';

class ControlBoostAction {
  /// The data store to boost.
  final pulumi.Input<String> dataStore;

  /// The filter to apply to the search results.
  final pulumi.Input<String> filter;

  /// The fixed boost value to apply to the search results. Positive values will increase the relevance of the results, while negative values will decrease the relevance. The value must be between -100 and 100.
  final pulumi.Input<double>? fixedBoost;

  /// The interpolation boost specification to apply to the search results.
  /// Structure is documented below.
  final pulumi.Input<ControlBoostActionInterpolationBoostSpec>?
  interpolationBoostSpec;

  /// Creates a new [ControlBoostAction].
  /// [dataStore] The data store to boost.
  /// [filter] The filter to apply to the search results.
  /// [fixedBoost] The fixed boost value to apply to the search results. Positive values will increase the relevance of the results, while negative values will decrease the relevance. The value must be between -100 and 100.
  /// [interpolationBoostSpec] The interpolation boost specification to apply to the search results.
  ControlBoostAction({
    required this.dataStore,
    required this.filter,
    this.fixedBoost,
    this.interpolationBoostSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'filter': filter,
      'fixedBoost': ?fixedBoost,
      'interpolationBoostSpec':
          ?pulumi.Input.mapOptionalInputValue<
            ControlBoostActionInterpolationBoostSpec,
            Map<String, dynamic>
          >(interpolationBoostSpec, (value) => value.toMap()),
    };
  }

  factory ControlBoostAction.fromMap(Map<String, dynamic> map) {
    return ControlBoostAction(
      dataStore: pulumi.Input.fromValue(map['dataStore'] as String),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      fixedBoost: (() {
        final guardedValue = map['fixedBoost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      interpolationBoostSpec: (() {
        final guardedValue = map['interpolationBoostSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ControlBoostActionInterpolationBoostSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
