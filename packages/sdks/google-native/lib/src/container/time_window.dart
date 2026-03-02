// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options.dart';

/// Represents an arbitrary window of time.
class TimeWindow {
  /// The time that the window ends. The end time should take place after the start time.
  final pulumi.Input<String>? endTime;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final pulumi.Input<MaintenanceExclusionOptions>? maintenanceExclusionOptions;
  /// The time that the window first starts.
  final pulumi.Input<String>? startTime;

  /// Creates a new [TimeWindow].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  TimeWindow({
    this.endTime,
    this.maintenanceExclusionOptions,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'maintenanceExclusionOptions': ?pulumi.Input.mapOptionalInputValue<MaintenanceExclusionOptions, Map<String, dynamic>>(maintenanceExclusionOptions, (value) => value.toMap()),
      'startTime': ?startTime,
    };
  }

  factory TimeWindow.fromMap(Map<String, dynamic> map) {
    return TimeWindow(
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      maintenanceExclusionOptions: map['maintenanceExclusionOptions'] == null ? null : (MaintenanceExclusionOptions.fromMap((map['maintenanceExclusionOptions']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

