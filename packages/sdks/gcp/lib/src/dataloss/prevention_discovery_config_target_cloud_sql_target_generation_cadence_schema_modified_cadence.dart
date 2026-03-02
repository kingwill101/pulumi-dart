// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence {
  /// Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? frequency;
  /// The types of schema modifications to consider. Defaults to NEW_COLUMNS.
  /// Each value may be one of: `NEW_COLUMNS`, `REMOVED_COLUMNS`.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence].
  /// [frequency] Frequency to regenerate data profiles when the schema is modified. Defaults to monthly.
  /// [types] The types of schema modifications to consider. Defaults to NEW_COLUMNS.
  PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'types': ?types,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence(
      frequency: map['frequency'] == null ? null : (map['frequency'] as String).input(),
      types: map['types'] == null ? null : ((map['types'] as List).cast<String>()).input(),
    );
  }
}

