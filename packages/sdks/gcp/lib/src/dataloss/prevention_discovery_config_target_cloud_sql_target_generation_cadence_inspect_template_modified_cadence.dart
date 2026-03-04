// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence {
  /// How frequently data profiles can be updated when the template is modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String> frequency;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when the template is modified. Defaults to never.
  PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence({
    required this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frequency': frequency};
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadenceInspectTemplateModifiedCadence(
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
    );
  }
}
