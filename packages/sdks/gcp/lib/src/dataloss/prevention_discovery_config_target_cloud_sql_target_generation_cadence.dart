// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_sql_target_generation_cadence_inspect_template_modified_cadence.dart';
import 'prevention_discovery_config_target_cloud_sql_target_generation_cadence_schema_modified_cadence.dart';

class PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence>? inspectTemplateModifiedCadence;
  /// Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? refreshFrequency;
  /// Governs when to update data profiles when a schema is modified
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence>? schemaModifiedCadence;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence].
  /// [inspectTemplateModifiedCadence] Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// [refreshFrequency] Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  /// [schemaModifiedCadence] Governs when to update data profiles when a schema is modified
  const PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence({
    this.inspectTemplateModifiedCadence,
    this.refreshFrequency,
    this.schemaModifiedCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence, Map<String, dynamic>>(inspectTemplateModifiedCadence, (value) => value.toMap()),
      'refreshFrequency': ?refreshFrequency,
      'schemaModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence, Map<String, dynamic>>(schemaModifiedCadence, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence(
      inspectTemplateModifiedCadence: (() { final guardedValue = map['inspectTemplateModifiedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshFrequency: (() { final guardedValue = map['refreshFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaModifiedCadence: (() { final guardedValue = map['schemaModifiedCadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceSchemaModifiedCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
