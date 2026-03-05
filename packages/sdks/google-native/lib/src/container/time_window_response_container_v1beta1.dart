// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options_response_container_v1beta1.dart';

/// Represents an arbitrary window of time.
class TimeWindowResponseContainerV1beta1 {
  /// The time that the window ends. The end time should take place after the start time.
  final pulumi.Input<String> endTime;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final pulumi.Input<MaintenanceExclusionOptionsResponseContainerV1beta1> maintenanceExclusionOptions;
  /// The time that the window first starts.
  final pulumi.Input<String> startTime;

  /// Creates a new [TimeWindowResponseContainerV1beta1].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  TimeWindowResponseContainerV1beta1({
    required this.endTime,
    required this.maintenanceExclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'maintenanceExclusionOptions': pulumi.Input.mapInputValue<MaintenanceExclusionOptionsResponseContainerV1beta1, Map<String, dynamic>>(maintenanceExclusionOptions, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory TimeWindowResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeWindowResponseContainerV1beta1(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      maintenanceExclusionOptions: pulumi.Input.fromValue(MaintenanceExclusionOptionsResponseContainerV1beta1.fromMap((map['maintenanceExclusionOptions']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

