// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence {
  /// Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? frequency;
  /// The types of schema modifications to consider. Defaults to NEW_COLUMNS.
  /// Each value may be one of: `NEW_COLUMNS`, `REMOVED_COLUMNS`.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence].
  /// [frequency] Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
  /// [types] The types of schema modifications to consider. Defaults to NEW_COLUMNS.
  const PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'types': ?types,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

