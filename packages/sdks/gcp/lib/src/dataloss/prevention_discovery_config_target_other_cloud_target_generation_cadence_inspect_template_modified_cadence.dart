// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence {
  /// How frequently data profiles can be updated when the template is modified. Defaults to never.
  /// Possible values are: `UPDATE_FREQUENCY_NEVER`, `UPDATE_FREQUENCY_DAILY`, `UPDATE_FREQUENCY_MONTHLY`.
  final pulumi.Input<String>? frequency;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when the template is modified. Defaults to never.
  PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence({
    this.frequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'frequency': ?frequency};
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetGenerationCadenceInspectTemplateModifiedCadence(
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
