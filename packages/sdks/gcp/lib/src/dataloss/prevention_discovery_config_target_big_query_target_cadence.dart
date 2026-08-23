// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_cadence_inspect_template_modified_cadence.dart';
import 'prevention_discovery_config_target_big_query_target_cadence_schema_modified_cadence.dart';
import 'prevention_discovery_config_target_big_query_target_cadence_table_modified_cadence.dart';

class PreventionDiscoveryConfigTargetBigQueryTargetCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence>? inspectTemplateModifiedCadence;
  /// Governs when to update data profiles when a schema is modified
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence>? schemaModifiedCadence;
  /// Governs when to update profile when a table is modified.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence>? tableModifiedCadence;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetCadence].
  /// [inspectTemplateModifiedCadence] Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// [schemaModifiedCadence] Governs when to update data profiles when a schema is modified
  /// [tableModifiedCadence] Governs when to update profile when a table is modified.
  const PreventionDiscoveryConfigTargetBigQueryTargetCadence({
    this.inspectTemplateModifiedCadence,
    this.schemaModifiedCadence,
    this.tableModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence, Map<String, dynamic>>(inspectTemplateModifiedCadence, (value) => value.toMap()),
      'schemaModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence, Map<String, dynamic>>(schemaModifiedCadence, (value) => value.toMap()),
      'tableModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence, Map<String, dynamic>>(tableModifiedCadence, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetCadence(
      inspectTemplateModifiedCadence: (() { final guardedValue = map['inspectTemplateModifiedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetCadenceInspectTemplateModifiedCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaModifiedCadence: (() { final guardedValue = map['schemaModifiedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetCadenceSchemaModifiedCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableModifiedCadence: (() { final guardedValue = map['tableModifiedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetCadenceTableModifiedCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
