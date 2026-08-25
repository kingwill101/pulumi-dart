// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleDeploymentScheduleCustomizations {
  /// Indicates whether to add additional delays and runs to rules to ensure
  /// enrichment completeness, with the trade-off of more late-arriving detections.
  final pulumi.Input<bool?>? ensureEnrichmentCompleteness;
  /// Delay the first rule execution run to account for late-arriving data.
  final pulumi.Input<String?>? lateArrivingDataAdjustment;

  /// Creates a new [RuleDeploymentScheduleCustomizations].
  /// [ensureEnrichmentCompleteness] Indicates whether to add additional delays and runs to rules to ensure
  /// [lateArrivingDataAdjustment] Delay the first rule execution run to account for late-arriving data.
  const RuleDeploymentScheduleCustomizations({
    this.ensureEnrichmentCompleteness,
    this.lateArrivingDataAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ensureEnrichmentCompleteness': ?ensureEnrichmentCompleteness,
      'lateArrivingDataAdjustment': ?lateArrivingDataAdjustment,
    };
  }

  factory RuleDeploymentScheduleCustomizations.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentScheduleCustomizations(
      ensureEnrichmentCompleteness: (() { final guardedValue = map['ensureEnrichmentCompleteness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lateArrivingDataAdjustment: (() { final guardedValue = map['lateArrivingDataAdjustment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
