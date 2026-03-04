// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_info_type_sensitivity_score.dart';

class PreventionJobTriggerInspectJobInspectConfigInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final pulumi.Input<String> name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore
  >?
  sensitivityScore;

  /// Version of the information type to use. By default, the version is set to stable.
  final pulumi.Input<String>? version;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version of the information type to use. By default, the version is set to stable.
  PreventionJobTriggerInspectJobInspectConfigInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore,
            Map<String, dynamic>
          >(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() {
        final guardedValue = map['sensitivityScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
