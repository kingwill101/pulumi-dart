// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence {
  /// How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? frequency;
  /// The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP
  /// Each value may be one of: `TABLE_MODIFIED_TIMESTAMP`.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// [types] The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP
  const PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'types': ?types,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
