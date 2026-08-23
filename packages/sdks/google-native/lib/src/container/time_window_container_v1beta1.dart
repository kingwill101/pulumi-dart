// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options_container_v1beta1.dart';

/// Represents an arbitrary window of time.
class TimeWindowContainerV1beta1 {
  /// The time that the window ends. The end time should take place after the start time.
  final pulumi.Input<String>? endTime;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final pulumi.Input<MaintenanceExclusionOptionsContainerV1beta1>? maintenanceExclusionOptions;
  /// The time that the window first starts.
  final pulumi.Input<String>? startTime;

  /// Creates a new [TimeWindowContainerV1beta1].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  const TimeWindowContainerV1beta1({
    this.endTime,
    this.maintenanceExclusionOptions,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'maintenanceExclusionOptions': ?pulumi.Input.mapOptionalInputValue<MaintenanceExclusionOptionsContainerV1beta1, Map<String, dynamic>>(maintenanceExclusionOptions, (value) => value.toMap()),
      'startTime': ?startTime,
    };
  }

  factory TimeWindowContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeWindowContainerV1beta1(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceExclusionOptions: (() { final guardedValue = map['maintenanceExclusionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceExclusionOptionsContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
