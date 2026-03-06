// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_exclusion_options_response.dart';

/// Represents an arbitrary window of time.
class TimeWindowResponse {
  /// The time that the window ends. The end time should take place after the start time.
  final pulumi.Input<String> endTime;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final pulumi.Input<MaintenanceExclusionOptionsResponse> maintenanceExclusionOptions;
  /// The time that the window first starts.
  final pulumi.Input<String> startTime;

  /// Creates a new [TimeWindowResponse].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  const TimeWindowResponse({
    required this.endTime,
    required this.maintenanceExclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'maintenanceExclusionOptions': pulumi.Input.mapInputValue<MaintenanceExclusionOptionsResponse, Map<String, dynamic>>(maintenanceExclusionOptions, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory TimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return TimeWindowResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      maintenanceExclusionOptions: pulumi.Input.fromValue(MaintenanceExclusionOptionsResponse.fromMap((map['maintenanceExclusionOptions']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

