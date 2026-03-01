// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_response.dart';

/// Represents an arbitrary window of time.
class TimeWindowResponse {
  /// The time that the window ends. The end time should take place after the start time.
  final String endTime;
  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptionsResponse maintenanceExclusionOptions;
  /// The time that the window first starts.
  final String startTime;

  /// Creates a new [TimeWindowResponse].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  TimeWindowResponse({
    required this.endTime,
    required this.maintenanceExclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'maintenanceExclusionOptions': maintenanceExclusionOptions.toMap(),
      'startTime': startTime,
    };
  }

  factory TimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return TimeWindowResponse(
      endTime: map['endTime'] as String,
      maintenanceExclusionOptions: MaintenanceExclusionOptionsResponse.fromMap((map['maintenanceExclusionOptions'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}

