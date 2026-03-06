// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationWindow {
  /// The duration of the maintenance window.
  final pulumi.Input<String> duration;
  /// Effective expiration date of the maintenance window.
  final pulumi.Input<String> expirationDateTime;
  /// The rate at which a maintenance window is expected to recur.
  final pulumi.Input<String> recurEvery;
  /// Effective start date of the maintenance window.
  final pulumi.Input<String> startDateTime;
  /// The time zone for the maintenance window.
  final pulumi.Input<String> timeZone;

  /// Creates a new [GetConfigurationWindow].
  /// [duration] The duration of the maintenance window.
  /// [expirationDateTime] Effective expiration date of the maintenance window.
  /// [recurEvery] The rate at which a maintenance window is expected to recur.
  /// [startDateTime] Effective start date of the maintenance window.
  /// [timeZone] The time zone for the maintenance window.
  const GetConfigurationWindow({
    required this.duration,
    required this.expirationDateTime,
    required this.recurEvery,
    required this.startDateTime,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'expirationDateTime': expirationDateTime,
      'recurEvery': recurEvery,
      'startDateTime': startDateTime,
      'timeZone': timeZone,
    };
  }

  factory GetConfigurationWindow.fromMap(Map<String, dynamic> map) {
    return GetConfigurationWindow(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      expirationDateTime: pulumi.Input.fromValue(map['expirationDateTime'] as String),
      recurEvery: pulumi.Input.fromValue(map['recurEvery'] as String),
      startDateTime: pulumi.Input.fromValue(map['startDateTime'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}

