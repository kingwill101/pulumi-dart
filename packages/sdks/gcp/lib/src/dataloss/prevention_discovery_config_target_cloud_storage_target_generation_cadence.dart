// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_generation_cadence_inspect_template_modified_cadence.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence {
  /// Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence>? inspectTemplateModifiedCadence;
  /// Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? refreshFrequency;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence].
  /// [inspectTemplateModifiedCadence] Governs when to update data profiles when the inspection rules defined by the `InspectTemplate` change. If not set, changing the template will not cause a data profile to update.
  /// [refreshFrequency] Frequency to update profiles regardless of whether the underlying resource has changes. Defaults to never.
  PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence({
    this.inspectTemplateModifiedCadence,
    this.refreshFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateModifiedCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence, Map<String, dynamic>>(inspectTemplateModifiedCadence, (value) => value.toMap()),
      'refreshFrequency': ?refreshFrequency,
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence(
      inspectTemplateModifiedCadence: map['inspectTemplateModifiedCadence'] == null ? null : (PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap((map['inspectTemplateModifiedCadence']! as Map).cast<String, dynamic>())).input(),
      refreshFrequency: map['refreshFrequency'] == null ? null : (map['refreshFrequency']! as String).input(),
    );
  }
}

